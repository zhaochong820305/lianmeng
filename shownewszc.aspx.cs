﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class shownewszc : System.Web.UI.Page
{
    public string title = "";
    public string content = "";
    public string writer = "";
    public string cdate = "";
    public int id = 0;
    public string leftmenu = "";
    public int fl = 0;
    public string flm = "";
    public string classname = "";
    public string wenhao = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            id = int.Parse(Request.QueryString["id"].ToString());
        }
        catch { }
        //try
        //{
        //    fl = int.Parse(Request.QueryString["fl"].ToString());
        //}
        //catch { }
        try
        {
            DataTable dta = DBZhengce.getDataTable("select *  from [zhengce] b where b.id=" + id);
            if (dta.Rows.Count > 0)
            {
                DataRow dr = dta.Rows[0];
                title = dr["mingcheng"].ToString();
                content = dr["zhengceqw"].ToString();
                content = Common.replceimg(content);
                content = content.Replace(title, "");
                content = content.Replace("&emsp ", "&emsp;");

                content = content.Replace("src=/", "src=\"http://www.miit-kjcg.org/");
                //content = content.Replace("src=\"", "src=\"http://www.miit-kjcg.org");
                content = content.Replace("src= /", "src=http://www.miit-kjcg.org/");

                content = content.Replace("href=/", "href=\"http://www.miit-kjcg.org/");
                // content = content.Replace("href=\"", "href=\"http://www.miit-kjcg.org");
                content = content.Replace("href= /", "href=http://www.miit-kjcg.org/");
                writer = dr["fawendanwen"].ToString();
                cdate = DateTime.Parse(dr["faburiqi"].ToString()).ToString("yyyy-MM-dd");
                //fl = int.Parse(dr["fl"].ToString());
                flm = dr["keys"].ToString();
                wenhao = dr["wenhao"].ToString();
            }
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
                    classname = dr["class"].ToString();
                    leftmenu += "<div class='con-nav-s'><a  target='_blank' href='list.aspx?class=" + dr["id"].ToString() + "&fl=" + fl + "' class='" + ((id.ToString() != dr["id"].ToString()) ? "con-nav-sa" : "con-nav-sactive") + "'>" + dr["class"].ToString() + "</a>   </div>";
                }
            }
        }
        catch { }
    }
}