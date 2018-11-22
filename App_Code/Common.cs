using System;
using System.Collections.Generic;
 
using System.Web;

using System.IO;
using System.Data;
using System.Xml;
/// <summary>
/// Common 的摘要说明
/// </summary>
public class Common
{
    public Common()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    #region 变量区域
    /// <summary>
    /// 是否调试状态
    /// </summary>
    public static bool _debug = false;
    public static bool _allerror = false;
    public static bool _sqllog = false;
    public static bool _writetoDatabase = false;
    public static string _headerName = "中企慧联";
    #endregion

    #region 公共函数
    public static void WriteDiskLog(string Log)
    {
        string path = "";
        path = Config.PATH + "\\log\\" + DateTime.Today.ToString("yyyy-MM-dd") + ".log";
        try
        {
            StreamWriter sw = new StreamWriter(path, true);
            sw.WriteLine(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + ": " + Log);
            sw.Close();
        }
        catch
        { }
    }
    public string loadnr(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = "<li><div class='c1'><a href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        try
        {
            DataTable dt = DBC.getDataTable("select top " + count + " * from zqhl_news where classid=" + classid + " order by qz desc,id desc");
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["title"].ToString();
                if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                rt += string.Format(format, dr["id"].ToString(), tmp, DateTime.Parse(dr["cdate"].ToString()).ToString("yyyy-MM-dd"));
            }
        }
        catch (Exception ex) { Common.WriteDiskLog("loadnr:" + ex.Message); }
        return rt;
    }
    public static bool iscompanyLogin()
    {
        bool rt = false;
        if (HttpContext.Current.Session["MemberName"] != null)
        {
            rt = true;
        }
        else
        {
            if (!_debug)
            {
                rt = false;
            }
            else
            {
                HttpContext.Current.Session["MemberName"] = "admin";
                rt = true;
            }
        }
        return rt;
    }
    public static bool isAdminLogin()
    {
        bool rt = false;
        if (HttpContext.Current.Session["adminloginuser"] != null)
        {
            rt = true;
        }
        else
        {
            if (!_debug)
            {
                rt = false;
            }
            else
            {
                HttpContext.Current.Session["adminloginuser"] = "admin";
                rt = true;
            }
        }
        return rt;
    }
    public static void WriteDiskSql(string Log)
    {
        string path = "";
        path = Config.PATH + "\\log\\" + DateTime.Today.ToString("yyyy-MM-dd") + ".sql";
        try
        {
            StreamWriter sw = new StreamWriter(path, true);
            sw.WriteLine(DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + ": " + Log);
            sw.Close();
        }
        catch
        { }
    }
    private static System.Xml.XmlDocument InitXML()
    {
        XmlDocument mXmlDoc = new XmlDocument();
        try
        {
            mXmlDoc.Load(Config.PATH + "\\Config.xml");
        }
        catch (Exception ex)
        {
            WriteDiskLog(ex.Message + " IN:" + ex.InnerException);
        }
        return mXmlDoc;
    }
    public static string ReadXML(string Node, string Element)
    {
        try
        {
            XmlDocument xmlDoc = new XmlDocument();
            XmlNode xmlNd;
            XmlNode xmlEle;
            xmlDoc = InitXML();
            xmlNd = xmlDoc.SelectSingleNode("//" + Node);
            xmlEle = xmlNd.SelectSingleNode(Element);
            return xmlEle.InnerText.ToString();
        }
        catch (Exception ex)
        {
            WriteDiskLog(ex.Message + " IN:" + ex.InnerException);
            return null;
        }
    }
    public static bool WriteXML(string Node, string Element, string value)
    {
        try
        {
            XmlDocument xmlDoc = new XmlDocument();
            XmlNode xmlNd;
            XmlNode xmlEle;
            xmlDoc = InitXML();
            xmlNd = xmlDoc.SelectSingleNode("//" + Node);
            //xmlNd.InnerText = Element;
            xmlEle = xmlNd.SelectSingleNode(Element);
            xmlEle.InnerText = value;
            xmlDoc.Save(Config.PATH + "\\Config.xml");
            return true;
        }
        catch (Exception ex)
        {
            WriteDiskLog(ex.Message + " IN:" + ex.InnerException);
            return false;
        }
    }
    public static string strFilter(string sr)
    {
        return sr.Replace(';', ' ').Replace('\'', ' ').Trim();
    }
    public static bool IsOnline()
    {
        if (HttpContext.Current.Session["LoginUser"] == null)
        {
            if (_debug)
            {
                HttpContext.Current.Session["LoginUser"] = "admin";
                HttpContext.Current.Session["admin"] = "1";
            }
            return false;
        }
        else
        {
            return true;
        }
    }
	public static string stringformat(string str, int n)
    {
        ///
        ///格式化字符串长度，超出部分显示省略号,区分汉字跟字母。汉字2个字节，字母数字一个字节
        ///
        string temp = string.Empty;
        if (System.Text.Encoding.Default.GetByteCount(str) <= n)//如果长度比需要的长度n小,返回原字符串
        {
            return str;
        }
        else
        {
            int t = 0;
            char[] q = str.ToCharArray();
            for (int i = 0; i < q.Length; i++)
            {
                if ((int)q[i] >= 0x4E00 && (int)q[i] <= 0x9FA5)//是否汉字
                {
                    temp += q[i];
                    t += 2;
                }
                else
                {
                    if (2 == System.Text.Encoding.Default.GetByteCount(q[i].ToString()))//判断是否为全角
                    {
                        temp += q[i];
                        t += 2;
                    }
                    else
                    {
                        temp += q[i];
                        t += 1;
                    }

                }
                if (t >= n)
                {
                    break;
                }
            }
            return (temp + "...");
        }
    }
    public static string replceimg(string content)
    {
        content = content.Replace("src=\"", "src=\"http://www.miit-kjcg.org");
        content = content.Replace("src=/", "src=\"http://www.miit-kjcg.org/");
        content = content.Replace("src= /", "src=http://www.miit-kjcg.org/");
        content = content.Replace("http://www.miit-kjcg.orghttp://www.miit-kjcg.org/", "http://www.miit-kjcg.org/");
        return content;
    }
    #endregion
}