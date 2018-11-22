using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class daguogongye : System.Web.UI.Page
{
    public string picspzj = string.Empty;
    public string picspjc = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        string format = @" <li>
                                <div class='nyjbleft'>
                                    <img src = 'http://www.miit-kjcg.com/{0}'  width='190px' height='210px' />
                                </div >
                                <div class='nyjbright'>
                                    <p>{3}</p>
                                    <span>{4}</span>
                                </div>
                            </li>";
        try
        {
            DataTable dt = DBC.getDataTable("select top 16 * from zqhl_zj where id in (183,238,147,727,9142) ORDER BY charindex(','+ltrim(id)+',', ',183,238,147,727,9142,') ");
            int ia = 1;
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["pic"].ToString();
                string name = dr["zjname"].ToString();
                name = Common.stringformat(name, 100);

                //if (ia % 4 == 1) { picspzj += "<li>"; }
                picspzj += string.Format(format, tmp, "", dr["id"].ToString(), name, dr["zw"].ToString());
                //if (ia % 4 == 0) { picspzj += "</li> \r\n"; }
                ia++;
            }
            //if(ia % 4 != 0) { picspjc += "</li>"; }
        }
        catch (Exception ex) { Common.WriteDiskLog("zqhl_pic:" + ex.Message); }
        //精彩瞬间
        format = "<a href='shownews.aspx?id={2}' target='_blank'><img src='http://www.miit-kjcg.org/{0}' width='206px' height='148px'  />{1}{4}</a> \r\n ";
        //string format2 = "<li><a href='http://www.niita.cn/nanchang/qiangji.aspx' target='_blank'><img src='http://www.miit-kjcg.org/{0}' width='266px' height='202px'/></a></li>";
        try
        {
            DataTable dt = DBC.getDataTable("select top 15 * from zqhl_news where charindex(',1198,',','+typename+',')>0    order by  id desc");
            int ia = 1;
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["pic"].ToString();
                string title = dr["title"].ToString();
                title = Common.stringformat(title, 60);

                if (ia % 5 == 1) { picspjc += "<li>"; }
                picspjc += string.Format(format, tmp, "", dr["id"].ToString(), dr["id"].ToString(), title);
                if (ia % 5 == 0) { picspjc += "</li> \r\n"; }
                //picspjc2 += string.Format(format2, tmp);
                ia++;
            }
            //if(ia % 4 != 0) { picspjc += "</li>"; }
        }
        catch (Exception ex) { Common.WriteDiskLog("zqhl_pic:" + ex.Message); }

    }

    public string loadnr(int classid, int length, int count)//分类id，长度，条数
    {
        string rt = "";
        string format = ""; // "<li><div class='c1'><a target='_blank' href ='shownews.aspx?id={0}'>{1}</a></div><div class='c2'>[{2}]</div></li>";
        format = " <li> <p class='list'> <a href ='shownews.aspx?id={0}'  target = '_blank' > {1}</a> </p> <p class='time'>{2}</p></li>";
        format = "<li> <img src ='http://www.miit-kjcg.com/{3}'  width='121px' height='75px' ><div class='newtitle'><a href='../shownews.aspx?id={0}' target='_blank'>{1}</a></div></li>";
        format = @"<li>
                        <a href='../shownews.aspx?id={0}' target='_blank'><img src='http://www.miit-kjcg.com/{3}'  width = '180px' height = '130px'></ a >
                        <div class='newtitle'><a href = '../shownews.aspx?id={0}' target='_blank'>{1}</a></div>
                        <div class='shijian'>{2}</div>
                   </li>";
        try
        {
            DataTable dt = DBC.getDataTable("select top " + count + " * from zqhl_news where  charindex(','+'" + classid + "'+',',','+typename+',')>0 " + " order by qz desc,id desc");//12498,12503
            foreach (DataRow dr in dt.Rows)
            {
                string tmp = dr["title"].ToString();
                //if (tmp.Length > length - 2) { tmp = tmp.Substring(0, length - 2) + "..."; }
                tmp = Common.stringformat(tmp, length);
                rt += string.Format(format, dr["id"].ToString(), tmp, DateTime.Parse(dr["cdate"].ToString()).ToString("yyyy-MM-dd"), dr["pic"].ToString());
            }
            //rt += "<li><div class='c1'><a target='_blank' href ='list.aspx?class=" + classid + "&fl=1'>更多...</a></li>";
        }
        catch (Exception ex) { Common.WriteDiskLog("index:zqhl_news1:" + ex.Message); }
        return rt;
    }
}