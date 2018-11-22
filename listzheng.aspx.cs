using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class listzheng : System.Web.UI.Page
{
    public int id = 0;
    public string classname = "";
    public int p = 1;
    public string pg = "";
    public int fl = 0;
    public string leftmenu = "";
    int ct = 15;
    public string content = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            id = int.Parse(Request.QueryString["class"].ToString());
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
            keys.Text = Request.QueryString["keys"].ToString();
        }
        catch { }
        if (!Page.IsPostBack)
        {
            setting(2, DiZhi, "省"); //地址
            setting(3, hangye, "行业"); //行业
        }
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
            if (lm == "5")
            {
                leftmenu += "<div class='con-nav-s'><a  target='_blank' href='zxsq.aspx?class=0&fl=5' class='con-nav-sa'>在线申请</a>   </div>";
                leftmenu += "<div class='con-nav-s'><a  target='_blank' href='lxwm.aspx?class=0&fl=5' class='con-nav-sa'>联系我们</a>   </div>";
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
            classname = "政策分析";
            if (one == 0)//多条
            {
                string sql = "select count(*) from [zhengce] where 1=1 ";
                if (keys.Text.Trim().Length > 0 && keys.Text.Trim() != "请输入关键词")
                {
                    sql += " and (keys like '%"+ keys.Text.Trim() + "%' or mingcheng like '%" + keys.Text.Trim() + "%' )";
                }
                //Response.Write(sql);
                dt = DBZhengce.getDataTable(sql);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i <= (int)(int.Parse(dt.Rows[0][0].ToString()) / ct); i++)
                    {
                        pg += "<li><a  target='_blank' href='listzheng.aspx?fl=" + fl + "&class=" + id + "&p=" + (i + 1) + "'>" + (i + 1) + "</a></li> \r\n";
                    }
                }
                content = " <ul  class='listulnew' >   \r\n ";
                content += loadnr(id, 40, ct, p);
                content += " </ul> \r\n	<ul class='pageul'>  \r\n" + pg + " </ul>  \r\n </div>  \r\n";
            }
            else//单独
            {
                dt = DBZhengce.getDataTable("select top 1 * from [zhengce]  ");
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];
                    content = "<div class='con1detailbt' style='margin-top:0'>";
                    content += dr["zhengceqw"].ToString();
                    content = Common.replceimg(content);
                    content += "</div>";
                }
            }

        }
        catch { }
        

    }
    private void setting(int itype, DropDownList ddlname, string str)
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

    public string loadnr(int classid, int length, int count, int page)//分类id，长度，条数
    {
        string rt = "";
        string format = "<li><a  target='_blank' href ='shownews.aspx?id={0}'>{1}</a>&nbsp;&nbsp;&nbsp;&nbsp;<span class='spanr'>[{2}]</span></li> \r\n";
        try
        {
            string sql = "select top " + count + " * from [zhengce] where 1=1  ";
            if (keys.Text.Trim().Length > 0 && keys.Text.Trim() != "请输入关键词")
            {
                sql += " and (keys like '%" + keys.Text.Trim() + "%' or mingcheng like '%" + keys.Text.Trim() + "%' )";
            }
            if (page > 1)
            {
                sql += " AND id <(SELECT ISNULL(min(id),0)  FROM  ( SELECT TOP(" + count + " * (" + page + "-1)) id FROM [zhengce]   ORDER BY id desc ) A)";
            }
            sql += " order by     id desc";
            DataTable dt = DBZhengce.getDataTable(sql);

            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["mingcheng"].ToString();
                //if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                rt += string.Format(format, dr["id"].ToString(), tmp, DateTime.Parse(dr["faburiqi"].ToString()).ToString("yyyy-MM-dd"));
            }
            //rt += sql;//调试
        }
        catch (Exception ex) { Common.WriteDiskLog("loadnr:" + ex.Message); }
        return rt;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("listzheng.aspx?class=83&fl=15");
    }
}