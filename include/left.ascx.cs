using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class include_left : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SELECT TOP 1000 [ID]     ,[logo],[url],[Name]  FROM [ZhongQiHuiLian].[dbo].[Company] where typeid='12,' and state=1
        

    }

    public string loadimg(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = " <li> <p class='list'> <a href ='shownews.aspx?id={0}'  target = '_blank' > {1}</a> </p> <p class='time'>{2}</p></li>";
        format = " <a href='{1}'  target = '_blank'><img src='{2}' width='120px' height='60px;'></a>";
        try
        {
            string sql = "SELECT TOP " + count + " [ID]     ,[logo],[url],[Name]  FROM [dbo].[Company] where charindex(',12,', ','+typeid+',')>0 and state=1";
            DataTable dt = DBqiye.getDataTable(sql);
            int i = 1;
            foreach (DataRow dr in dt.Rows)
            {
                
                string logo = dr["logo"].ToString();
                if (logo.Length == 0)
                {
                    logo = "images/logo.png";
                }
                else
                {
                    logo = "http://www.miit-kjcg.org/" + logo;
                }
                string url = dr["url"].ToString();
                if (url.Length == 0)
                {
                    url = "http://www.niita.org";
                }
                if ((i % 4) == 1) rt += "<li>";
                rt += string.Format(format, dr["id"].ToString(), url, logo);
                if ((i % 4) == 0 && i>0) rt += "</li>";
                i++;
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("index:Company:" + ex.Message); }
        return rt;
    }
}