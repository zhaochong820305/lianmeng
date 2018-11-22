using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class listcymain : System.Web.UI.Page
{
    public int id = 0;
    public string classname = "";
    public int p = 1;
    public string pg = "";
    public int fl = 0;
    public string leftmenu = "";
    int ct = 14;
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
            if (one == 0)//多条
            {
                string sql = "select count(*) from company where state=1 and name <>'' and [Address]<>'' ";
                //Response.Write(sql);
                dt = DBqiye.getDataTable(sql);
                if (dt.Rows.Count > 0)
                {
                    for (int i = 0; i <= (int)(int.Parse(dt.Rows[0][0].ToString()) / ct); i++)
                    {
                        pg += "<li><a   href='listcy.aspx?fl=" + fl + "&class=" + id + "&p=" + (i + 1) + "'>" + (i + 1) + "</a></li> \r\n";
                    }

                }
                content = "<div class='con1detailbt' style='margin-top:0'>  \r\n <ul  class='listulnew' >  \r\n ";
                content += loadnr(id, 48, 5, p);
                //content += " </ul> \r\n	<ul class='pageul'>  \r\n" + pg + " </ul>  \r\n </div>  \r\n";
                content += " </ul>  </div>  \r\n";
            }
            else//单独
            {
                dt = DBC.getDataTable("select top 1 * from zqhl_news where charindex(','+'" + id + "'+',',','+typename+',')>0 ");
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];
                    content = "<div class='con1detailbt' style='margin-top:0'>";
                    content += dr["content"].ToString();
                    content = Common.replceimg(content);
                    content += "</div>";
                }
            }

        }
        catch { }
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
    public string loadnr(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        //format = " <li> <p class='list'> <a href ='shownews.aspx?id={0}'  target = '_blank' > {1}</a> </p> <p class='time'>{2}</p></li>";
        format = "<li><a  target='_blank' href ='shownews.aspx?id={0}'>{1} </a><span class='spanr'>&nbsp; &nbsp; [{2}] </span></li> \r\n";
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
    public string loadnr(int classid, int length, int count, int page)//分类id，长度，条数
    {
        string rt = "";
        string format = "<li><a  target='_blank' href ='showcy.aspx?id={0}'>{1} </a><span class='spanr'>&nbsp; &nbsp; [{2}] </span><p>简介： {3}</p></li> \r\n";
        try
        {
            string sql = "select top " + count + " * from company   where state=1 and name <>'' and [Address]<>'' ";
            if (page > 1)
            {
                sql += " and id <(SELECT ISNULL(min(id),0)  FROM  ( SELECT TOP(" + count + " * (" + page + "-1)) id FROM [company]  where state=1 and name <>'' and [Address]<>''   ORDER BY id desc ) A)";
            }
            sql += " order by  id desc";
            DataTable dt = DBqiye.getDataTable(sql);

            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["BusinessScope"].ToString();
                if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                rt += string.Format(format, dr["id"].ToString(), dr["name"].ToString(), DateTime.Parse(dr["CreateDate"].ToString()).ToString("yyyy-MM-dd"), tmp);
            }
        }
        catch (Exception ex) { Common.WriteDiskLog("loadnr:" + ex.Message); }
        return rt;
    }
}