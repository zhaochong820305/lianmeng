using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
public partial class _Default : System.Web.UI.Page
{
    public string pic = "";
    public string strziyuanxiazai = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string format; //  = "<a href='{2}' target='_blank'><img id='slide-img-{1}' src='{0}' class='slide' alt=''  width='100%' height='400'/></a>";
        format = "<div class='fcon' style='display: none; '> <a href ='{2}' ><img src = 'http://www.miit-kjcg.org/{0}' ></a>  <span class='shadow'><a target='_blank' href='{2}'>{1}</span></a></div> \r\n";
        
        //string formatxt = "{{\"id\":\"slide-img-{0}\",\"client\":\"\",\"desc\":\"{1}\"}}";
        try
        {
            DataTable dt = DBC.getDataTable("select top 5 * from zqhl_pic where typeid=3  and en=1  order by qz,id desc");
            int ia = 1;
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["pic"].ToString();
                string title = dr["title"].ToString();
                pic += string.Format(format, tmp, title, dr["link"].ToString());
                //if (pictxt.Length > 0)
                //{
                //    pictxt += "," + string.Format(formatxt, ia, dr["title"].ToString());
                //}
                //else
                //{
                //    pictxt = string.Format(formatxt, ia, dr["title"].ToString());
                //}
                //pictxt = "";
                ia++;
            }
        }
        catch (Exception ex) { Common.WriteDiskLog("zqhl_pic:" + ex.Message); }

        getZiyuaninfo();
    }

    public string loadnr(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = " <li> <p class='list'> <a href ='shownews.aspx?id={0}'  target = '_blank' >• {1}</a> </p>  </li>";
        try
        {
            DataTable dt = DBC.getDataTable("select top " + count + " * from zqhl_news where   charindex(','+'" + classid + "'+',',','+typename+',')>0 " + " order by qz desc,id desc");
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["title"].ToString();
                //if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), tmp, "");
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("index:zqhl_news1:" + ex.Message); }
        return rt;
    }

    public string company(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = " <li><p class='list'> <a href ='showcy.aspx?id={0}&class={2}' > {1}</a> </p> </li>";
        try
        {
            DataTable dt = DBqiye.getDataTable("select top " + count + " * from [Company] where   Name<>'' and  len([Address])>5   and  [state]=1 order by id desc");
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["Name"].ToString();
                if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), tmp, classid);
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("index:Company:" + ex.Message); }
        return rt;
    }

    public string Technology(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = " <li>• <a href ='showTech.aspx?id={0}&class={2}' > {1}</a></li>";
        try
        {
            DataTable dt = DBqiye.getDataTable("select top " + count + " * from [Results] where      [state]=1  and webtype='" + classid + "' order by id desc");
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["RName"].ToString();
                if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), tmp, classid);
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("index:Technology:" + ex.Message); }
        return rt;
    }


    //资源下载
    public void getZiyuaninfo()
    {
        strziyuanxiazai = "";
        DataTable dt = null;
        string strSQL = "select top 10 * from [Resource] where [state]=1 and id>=33 order by id ";
        try
        {
            dt = DBqiye.getDataTable(strSQL);
        }
        catch { }

        if (dt != null && dt.Rows.Count > 0)
        {
            foreach (DataRow dr in dt.Rows)
            {
                //路径
                string lujing = dr["filename"].ToString();
                lujing = lujing.Substring(12, lujing.Length - 12);
                lujing = lujing.Replace(@"\", @"/");
                lujing = "http://www.miit-kjcg.org" + lujing;
                //Response.Write(lujing);
                /////http://www.miit-kjcg.org/upload/ziyuan/1.pdf

                //标题
                string str_titl = dr["title"].ToString();

                //内容
                string straa = dr["text"].ToString();
                straa = NoHTML(straa);
                straa = straa.Replace("<br />", "");
                straa = straa.Replace("emsp", "");
                straa = straa.Replace("&amp;", "");
                straa = straa.Replace("nbsp", "");
                string tmp = straa;
                int length = 60 - str_titl.Length;

                if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }

                //strziyuanxiazai += "<li style='height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;'><a href='"+ lujing + "' target='_blank'><b>>&nbsp;&nbsp;"+ dr["title"].ToString() + "：</b>"+ tmp + "</a><a href='"+ lujing + "' style='float:right;text-decoration:underline;margin-right:20px;' download='" + dr["title"].ToString() + ".pdf'>PDF下载</a></li>";
                strziyuanxiazai += "<li style='height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;'><a href='" + lujing + "' target='_blank'><b>>&nbsp;&nbsp;" + dr["title"].ToString() + "</b>"  + "</a><a href='" + lujing + "' style='float:right;text-decoration:underline;margin-right:20px;' download='" + dr["title"].ToString() + ".pdf'>PDF下载</a></li>";
                //Response.Write(strziyuanxiazai);

            }
        }

    }

    public static string NoHTML(string Htmlstring)
    {
        if (Htmlstring.Length > 0)
        {
            //删除脚本
            Htmlstring = Regex.Replace(Htmlstring, @"<script[^>]*?>.*?</script>", "", RegexOptions.IgnoreCase);
            //删除HTML
            Htmlstring = Regex.Replace(Htmlstring, @"<(.[^>]*)>", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"([\r\n])[\s]+", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"-->", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"<!--.*", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(quot|#34);", "\"", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(amp|#38);", "&", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(lt|#60);", "<", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(gt|#62);", ">", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(nbsp|#160);", " ", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(iexcl|#161);", "\xa1", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(cent|#162);", "\xa2", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(pound|#163);", "\xa3", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&(copy|#169);", "\xa9", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&#(\d+);", "", RegexOptions.IgnoreCase);
            Htmlstring = Regex.Replace(Htmlstring, @"&ldquo;", "\"", RegexOptions.IgnoreCase);//保留【 “ 】的标点符合
            Htmlstring = Regex.Replace(Htmlstring, @"&rdquo;", "\"", RegexOptions.IgnoreCase);//保留【 ” 】的标点符合
            Htmlstring.Replace("<", "");
            Htmlstring.Replace(">", "");
            Htmlstring.Replace("\r\n", "");
            Htmlstring = HttpContext.Current.Server.HtmlEncode(Htmlstring).Trim();
        }
        return Htmlstring;
    }




}