using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class showcy : System.Web.UI.Page
{
    public int id = 0;
    public string classname = "";
    public int p = 1;
    public int zjid = 0;
    public string pg = "";
    public int fl = 0;
    public string leftmenu = "";
    int ct = 14;
    public string content = "";
    public string zzinfo = "";
    public string zjjj = "";
    public string zjjl = "";
    public string name = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            id = int.Parse(Request.QueryString["class"].ToString());
        }
        catch { }
        try
        {
            zjid = int.Parse(Request.QueryString["id"].ToString());
        }
        catch { }
        try
        {
            p = int.Parse(Request.QueryString["p"].ToString());
        }
        catch { }
        try
        {
            fl = int.Parse(Request.QueryString["fl"].ToString());
        }
        catch { }
        DataTable dt;
        try//左侧菜单
        {
            dt = DBC.getDataTable("select * from zqhl_class where fl=" + fl + " order by fl asc,en asc,sx asc");
            string lm = "0";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                DataRow dr = dt.Rows[i];
                if (lm != dr["fl"].ToString())
                {
                    leftmenu = "<div class='con-nav'>" + dr["class"].ToString() + "</div>";
                    lm = dr["fl"].ToString();
                }
                else
                {
                    leftmenu += "<div class='con-nav-s'><a  target='_blank' href='" + ((lm == "4") ? "listzj" : "list") + ".aspx?class=" + dr["id"].ToString() + "&fl=" + fl + "' class='" + ((id.ToString() != dr["id"].ToString()) ? "con-nav-sa" : "con-nav-sactive") + "'>" + dr["class"].ToString() + "</a>   </div>";
                }
            }
        }
        catch { }
        try
        {
            int one = 0;
            if (id == 0)
            {
                dt = DBC.getDataTable("select * from zqhl_class where fl=" + fl + " order by fl asc,en asc,sx asc");
                if (dt.Rows.Count > 1)
                {
                    classname = dt.Rows[1]["class"].ToString();
                    int.TryParse(dt.Rows[1]["one"].ToString(), out one);
                    int.TryParse(dt.Rows[1]["id"].ToString(), out id);
                }
            }
            else
            {
                dt = DBC.getDataTable("select * from zqhl_class where id=" + id + " order by fl asc,en asc,sx asc");
                if (dt.Rows.Count > 0)
                {
                    classname = dt.Rows[0]["class"].ToString();
                    int.TryParse(dt.Rows[0]["one"].ToString(), out one);
                }
            }


        }
        catch { }
        try
        {
            string fmt = "<a  target='_blank' href='showcy.aspx?id={0}&class={1}&fl={2}'><img src='http://www.miit-kjcg.org/{3}'   /></a><div class='zjjs'><span>公司名称：{4}</span><p>地址：{5}</p></div>";
            dt = DBqiye.getDataTable("select top 1 * from company where id=" + zjid);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                zzinfo = string.Format(fmt, dr["id"].ToString(), id, fl, dr["logo"].ToString(), dr["name"].ToString(), dr["Address"].ToString());
                zjjj = dr["BusinessScope"].ToString();
                //zjjl = dr["zjjl"].ToString();
                name = dr["name"].ToString();
            }

        }
        catch { }
    }
    public string loadnr(int classid, int length, int count, int page)//分类id，长度，条数
    {
        string rt = "";
        string format = "<li><div class='c1'><a  target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
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
}