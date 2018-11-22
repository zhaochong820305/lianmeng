using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text.RegularExpressions;
public partial class index : System.Web.UI.Page
{
    public string pic = "";
    public string strziyuanxiazai = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string format; //  = "<a href='{2}' target='_blank'><img id='slide-img-{1}' src='{0}' class='slide' alt=''  width='100%' height='400'/></a>";
        format = "<div class='fcon' style='display: none; '> <a href ='{2}' target='_blank' ><img src = 'http://www.miit-kjcg.org/{0}'  ></a>  <span class='shadow'><a target='_blank' href='{2}'>{1}</span></a></div> \r\n";
        //string formatxt = "{{\"id\":\"slide-img-{0}\",\"client\":\"\",\"desc\":\"{1}\"}}";
        try
        {
            DataTable dt = DBC.getDataTable("select top 5 * from zqhl_pic where typeid=2  and en=1  order by qz,id desc");
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
        if (!Page.IsPostBack)
        {
            setting(2, DiZhi,"省"); //地址
            setting(3, hangye, "行业"); //行业
        }

    }
    private void setting(int itype, DropDownList ddlname,string str)
    {
        string sql = "SELECT  [ID],[Name]  FROM [dbo].[Setting] where SettingID=" + itype + " and state=1 ";
         
        DataTable dt = DBqiye.getDataTable(sql);
        ddlname.DataSource = dt;
        ddlname.DataTextField = "Name";
        ddlname.DataValueField = "ID";
        ddlname.DataBind();
        ddlname.Items.Insert(0, new ListItem(str, "0"));
        ddlname.SelectedValue = "0";
        if (itype == 30)
        {
            ddlname.SelectedValue = "206";
        }
    }

    public string loadnr(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = " <li> <p class='list'> <a href ='shownews.aspx?id={0}'  target = '_blank' > {1}</a> </p> <p class='time'>{2}</p></li>";
        try
        {
            DataTable dt = DBC.getDataTable("select top " + count + " * from zqhl_news where   charindex(','+'" + classid + "'+',',','+typename+',')>0 " + " order by qz desc,id desc");
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["title"].ToString();
                //if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), tmp, DateTime.Parse(dr["cdate"].ToString()).ToString("yyyy-MM-dd"));
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
        format = " <li><p class='list'> <a href ='showcy.aspx?id={0}' > {1}</a> </p> <p class='time'>{2}</p></li>";
        try
        {
            DataTable dt = DBqiye.getDataTable("select top " + count + " * from [Company] where   charindex(','+'" + classid + "'+',',','+typeid+',')>0 " + " and  viewname is not null and  [state]=1 order by id desc");
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["Name"].ToString();
                if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), tmp, DateTime.Parse(dr["CreateDate"].ToString()).ToString("yyyy-MM-dd"));
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("index:Company:" + ex.Message); }
        return rt;
    }

    public string companyimg(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = "<a target='_blank' href ='showcy.aspx?id={0}'><img src ='http://www.miit-kjcg.org{1}'   border='0'  alt='{2}'></a>";
        try
        {
            int irows = 1;
            DataTable dt = DBqiye.getDataTable("select top " + count + " * from [Company] where   charindex(','+'" + classid + "'+',',','+typeid+',')>0 " + " and  logo is not null and logo<>'' and  [state]=1 order by id desc");
            foreach (DataRow dr in dt.Rows)
            {
                if (irows % 4 == 1)
                {
                    rt += "<li>";
                }
                string tmp = dr["viewname"].ToString();
                if (tmp.Length < 0)
                {
                    tmp = dr["Name"].ToString();
                }
                //if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), dr["logo"].ToString(), tmp);
                if (irows % 4 == 0)
                {
                    rt += "</li>";
                }
                irows++;
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("Company:" + ex.Message); }
        return rt;
    }

    public string loadabout(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = " <li> <a href ='shownews.aspx?id={0}'  target = '_blank' > {1}</a></li>";
        try
        {
            DataTable dt = DBC.getDataTable("select top " + count + " * from zqhl_news where   charindex(','+'" + classid + "'+',',','+typename+',')>0 " + " order by qz desc,id desc");
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["title"].ToString();
                //if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), tmp);
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("zqhl_news2:" + ex.Message); }
        return rt;
    }

    public string loadzc(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = " <li> <a href ='shownewszc.aspx?id={0}'  target = '_blank' > {1}</a><div class='c2'>[{2}]</div></li>";
        try
        {
            DataTable dt = DBZhengce.getDataTable("select top " + count + " * from [zhengce]       order by  id desc");
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["mingcheng"].ToString();
                //if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), tmp, DateTime.Parse(dr["faburiqi"].ToString()).ToString("yyyy-MM-dd"));
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("zhengce:" + ex.Message); }
        return rt;
    }

    public string zhuanjia(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = " <li><a href='showzj.aspx?id={0}'><img src='http://www.miit-kjcg.org/{1}'  width='87' height='94' alt='{2}'><h3>{2}</h3><p>{3}</p></a></li>";
        try
        {
            DataTable dt = DBC.getDataTable("select top " + count + " * from [zqhl_zj] where classid="+ classid + "    order by id desc");
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["zjjl"].ToString();
                //if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), dr["pic"].ToString(), dr["zjname"].ToString(), tmp);
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("Company:" + ex.Message); }
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

                //strziyuanxiazai += "<li style='height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;'><a href='" + lujing + "' target='_blank'><b>>&nbsp;&nbsp;" + dr["title"].ToString() + "：</b>" + tmp + "</a><a href='" + lujing + "' style='float:right;text-decoration:underline;margin-right:20px;' download='" + dr["title"].ToString() + ".pdf'>PDF下载</a></li>";
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




    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("listzheng.aspx?class=83&fl=15&keys="+ keys.Text.Trim());
    }
}