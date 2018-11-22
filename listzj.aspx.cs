using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class listzj1 : System.Web.UI.Page
{
    public int id = 0;
    public string classname = "";
    public int p = 1;
    public string pg = "";
    public int fl = 0;
    public string leftmenu = "";
    int ct = 14;
    public string content = "";
    public string zzinfo = "";
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


        }
        catch { }
        try
        {
            string sql = "select count(*) from zqhl_zj ";
            if (id > 0)
            {
                sql += " where classid='"+id+"'";
            }
            //Response.Write(sql);
            dt = DBC.getDataTable(sql);
            if (dt.Rows.Count > 0)
            {
                for (int i = 0; i <= (int)(int.Parse(dt.Rows[0][0].ToString()) / ct); i++)
                {
                    pg += "<li><a    href='listzj.aspx?fl=" + fl + "&class=" + id + "&p=" + (i + 1) + "'>" + (i + 1) + "</a></li> \r\n";
                }
            }
            content = " ";
            content += loadnr(id, 40, 14, p,fl);
            content += "  \r\n	<ul class='pageul'>  \r\n" + pg + " </ul>  \r\n  \r\n";

            //string fmt = "<li><a  target='_blank' href='showzj.aspx?id={0}&class={1}&fl={2}'><img src='http://www.miit-kjcg.org/{3}' width='112' height='130' /></a><p><b>{4}（组长）</b>{5}</p> <p>{6} <a href='showzj.aspx?id={0}&class={1}&fl={2}'>了解详情>></a></p></li>";
            //dt = DBC.getDataTable("select top 1 * from zqhl_zj --where classid=" + id);
            //if (dt.Rows.Count > 0)
            //{
            //    DataRow dr = dt.Rows[0];
            //    //第一项内容为专家组长，图片，组长，简介等
            //    //zzinfo = string.Format(fmt, dr["id"].ToString(), id, fl, dr["pic"].ToString(), dr["zjname"].ToString(), dr["zw"].ToString(), dr["zjjj"].ToString().Length > 20 ? dr["zjjj"].ToString().Substring(0, 19) + "..." : dr["zjjj"].ToString());
            //}
            //// fmt = "<td><a  target='_blank' href='showzj.aspx?id={0}&class={1}&fl={2}'><img src='http://www.miit-kjcg.org/{3}' width='150' height='150' /></a><p>{4}</p><p>{5}</p></td>";
            //dt = DBC.getDataTable("select * from zqhl_zj where zzf=0  --and classid=" + id);
            //int fb = 0;
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    DataRow dr = dt.Rows[i];
            //    //if (fb == 0) content += "<li>";
            //    content += string.Format(fmt, dr["id"].ToString(), id, fl, dr["pic"].ToString(), (dr["zjname"].ToString().Length > 9) ? dr["zjname"].ToString().Substring(0, 8) + ".." : dr["zjname"].ToString(), dr["zw"].ToString(), (dr["zjjl"].ToString().Length > 130) ? dr["zjjl"].ToString().Substring(0, 128) + ".." : dr["zjjl"].ToString());
            //    //if (fb == 3) { fb = 0; content += "</tr>"; } else fb++;
            //}
        }
        catch { }
    }
    public string loadnr(int classid, int length, int count, int page,int fl)//分类id，长度，条数
    {
        string rt = "";
        string format = "<li><a  target='_blank' href='showzj.aspx?id={0}&class={1}&fl={2}'><img src='http://www.miit-kjcg.org/{3}' width='112' height='130' /></a><p><b>{4}（组长）</b></p> </li>";
        try
        {
            string sql = "select top " + count + " * from zqhl_zj where 1=1 ";
            if (classid > 0)
            {
                sql += "  and classid='" + id + "' ";
            }
            if (page > 1)
            {
                sql += " and  id <(SELECT ISNULL(min(id),0)  FROM  ( SELECT TOP(" + count + " * (" + page + "-1)) id FROM [zqhl_zj]   ORDER BY  id desc ) A)";
            }
            sql += " ORDER BY  id desc ";
            DataTable dt = DBC.getDataTable(sql);
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["zjname"].ToString();
                if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                rt += string.Format(format, dr["id"].ToString(), dr["classid"].ToString(), fl, dr["pic"].ToString(), (dr["zjname"].ToString().Length > 9) ? dr["zjname"].ToString().Substring(0, 8) + ".." : dr["zjname"].ToString());
            }
        }
        catch (Exception ex) { Common.WriteDiskLog("loadnr:" + ex.Message); }
        return rt;
    }
}