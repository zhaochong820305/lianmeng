<%@ Page Language="C#" AutoEventWireup="true" CodeFile="daguogongye.aspx.cs" Inherits="daguogongye" %>

<%@ Register Src="~/include/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/include/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/include/menu.ascx" TagPrefix="uc1" TagName="menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="大国工业梦新书发布会,科技成果评价中心,全国工业和信息化科技成果转化联盟">   
<title>大国工业梦新书发布会</title>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/lrtk.css" />
<link rel="stylesheet" href="css/css.css" />
<link href="css/xinxiluntan.css?v=2018" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/koala.min.1.5.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>


    <!--------nav下拉菜单-------->
<script>
	$(function(){
		$('#SERVICE').mouseover(function(){
			$('#SERVICE_box').toggle();
		})
		$('#SERVICE').mouseout(function(){
			$('#SERVICE_box').toggle();
		})
	})
</script>
    <style type="text/css">

        table.MsoNormalTable{
        font-family:'Times New Roman';
        font-size:10.0000pt;
        width:1058px;
        }
    </style>
</head>
    
<body>
    <uc1:menu runat="server" ID="menu" />
<!--内容-->
<!--con-->
<div class="con1xx">
    <div class="banners"><img src="img/banner1.png" /></div>
     
    <div class="luntanmudi" >
        <div class="list1">
		    <p class="list1p1"> 新闻报道 </p>	
            <p class="list1p1right"><a href="list.aspx?class=1198&fl=1" target="_blank"> 更多》 </p>		
	    </div>
        <div class='xinwen' >
            <ul>
                <%--<li>
                    <a href="../shownews.aspx?id=12497" target="_blank"><img src="500qiang/img/u2.jpg"  width="180px" height="130px"></a>
                    <div class="newtitle"><a href="../shownews.aspx?id=12497" target="_blank">2018中国500强企业高峰论坛新闻发布会在北京召开</a></div>
                    <div class="shijian">2018-9-4</div>
                </li>
                <li>
                   <a href="../shownews.aspx?id=12497" target="_blank"><img src="500qiang/img/u3.jpg"  width="180px" height="130px"></a>
                    <div class="newtitle"><a href="../shownews.aspx?id=12497" target="_blank">2018中国500强企业高峰论坛新闻发布会在北京召开</a></div>
                    <div class="shijian">2018-9-4</div>
                </li>
                <li>
                    <img src="500qiang/img/u2.jpg"  width="180px" height="130px">
                    <div class="newtitle"><a href="../shownews.aspx?id=12497" target="_blank">2018中国500强企业高峰论坛新闻发布会在北京召开</a></div>
                    <div class="shijian">2018-9-4</div>
                </li>
                <li>
                    <img src="500qiang/img/u3.jpg"  width="180px" height="130px">
                    <div class="newtitle"><a href="../shownews.aspx?id=12497" target="_blank">2018中国500强企业高峰论坛新闻发布会在北京召开</a></div>
                    <div class="shijian">2018-9-4</div>
                </li>
                <li>
                    <img src="500qiang/img/u2.jpg"  width="180px" height="130px">
                    <div class="newtitle"><a href="../shownews.aspx?id=12497" target="_blank">2018中国500强企业高峰论坛新闻发布会在北京召开</a></div>
                    <div class="shijian">2018-9-4</div>
                </li>
                <li>
                    <img src="500qiang/img/u3.jpg"  width="180px" height="130px">
                    <div class="newtitle"><a href="../shownews.aspx?id=12497" target="_blank">2018中国500强企业高峰论坛新闻发布会在北京召开</a></div>
                    <div class="shijian">2018-9-4</div>
                </li>
                <li>
                    <img src="500qiang/img/u2.jpg"  width="180px" height="130px">
                    <div class="newtitle"><a href="../shownews.aspx?id=12497" target="_blank">2018中国500强企业高峰论坛新闻发布会在北京召开</a></div>
                    <div class="shijian">2018-9-4</div>
                </li>
                <li>
                    <img src="500qiang/img/u3.jpg"  width="180px" height="130px">
                    <div class="newtitle"><a href="../shownews.aspx?id=12497" target="_blank">2018中国500强企业高峰论坛新闻发布会在北京召开</a></div>
                    <div class="shijian">2018-9-4</div>
                </li>--%>
                <%=loadnr(1198,70,8) %>
            </ul>
        </div>
    </div>
     <%--现场报道--%>
    <div class="cenhuitljbjc">
        <div class="jingcai">
                    <a name="xianchang"> </a>
                    <%--现场报道--%>
                     <div class="list1">
		                <p class="list1p1"> 精彩图文 </p>	
                        <p class="list1p1right">  </p>		
	                </div>
                    <div class="lm_bjjc">
        	            <div class="fl lm_button prev1cj"><a href="javascript:;"><img src="../images/left.jpg"  width="15px" style="padding-top:70px;" /></a><a name="shipin"> </a></div>
        	            <div class="fl lm_mainjc">
                            <ul>
                                <%=picspjc %>
                            </ul>
                        </div>
                        <div class="fr lm_button next1cj"><a href="javascript:;"><img src="../images/right.jpg"  width="15px" style="padding-top:70px;" /></a></div>
                    </div>
                    <script type="text/javascript">
       $(document).ready(function() {
           var innerGroup = $(".lm_mainjc ul>li");
           var imgWidth = $(".lm_mainjc ul>li").eq(0).width();
           var _index = 0;
           var timer = null;
           var flag = true;
		   //$(".lm_main ul").append('<li>' + $(".lm_main ul > li:first").html()+ '</li>');
           function selectPic(num) {
               $(".lm_mainjc ul").animate({
                   left: -num * imgWidth,
               }, 1000, function() {
                   //检查是否到最后一张
                   if (_index >= innerGroup.length ) {
                       _index = 0;
					   console.log( _index)
                       $(".lm_mainjc ul").css("left", "0px");
                   }
               })
           }
           function autoGo(bol) {
               //自动行走
               if (bol) {
                   timer = setInterval(go,4000);
               }
           }
           autoGo(flag);

           function go() {
               //计时器的函数
               _index++;
               // console.log(_index);
               selectPic(_index);
           }

           $(".lm_bjjc").hover(function () {
           		// console.log(0+'1')
               //鼠标移入
               clearInterval(timer);
               flag = false;
           }, function() {
               flag = true;
               timer = setInterval(go, 3000);
           });
           $('.next1jc').on("click", function() {
               //右箭头
               flag = false;
               clearInterval(timer);
               _index++;
               selectPic(_index);
           })
           $('.prev1jc').on("click", function() {
               //左箭头
               flag = false;
               clearInterval(timer);
               if (_index == 0) {
                   _index = innerGroup.length - 1;
                  $(".lm_mainjc ul").css("left", -(innerGroup.length - 1) * imgWidth);
               }
               _index--;
               selectPic(_index);
           })
       }); 
  	</script>
                           
                </div>
    </div>
    <%--<div class="daguobeijing" >
        <div class="list1">
		    <p class="list1p1"> 活动背景 </p>		
	    </div>
        <div class='luntanmudirdg' style='margin-top:0'>            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大数据时代背景下，信息化建设成为国家战略，数据安全已经与政治安全、经济安全、国防安全、文化安全共同成为国家安全的重要组成部分。人们的正常生活越来越依靠这些关键基础设施的正常运转，信息空间已经成为国家主权的延伸，成为继领土、领海、领空之外的“第四空间”。十九大报告指明了国家未来网络安全建设的思想和方向。2017年全球信息安全产品与服务开支将达到870亿美元，相比2016年增长7%，预计2018年开支将增长至945亿美元。但以美国为主导的北美市场仍然占据全球最大的市场份额。</p>
            <br>            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第二届信息安全产业发展论坛是继2017年中国企业500强发展论坛——信息安全产业发展专题活动基础上的深入探讨。本次论坛的召开深度聚焦“数据存储安全”，不仅是思想的碰撞与融合，更是产业的链接与共生。</p>
            <br>            
        </div>
    </div>

    <div class="maln_r_boxxx" style="background-color:#ffffff;">
        <div class="list1">
		    <p class="list1p1"> 论坛组织 </p>		
	    </div>
        <div class='con1detailbtxx2' style='margin-top:0'>
            <ul>                
                
                <li>
                    <div class="left">主办单位：</div>
                    <div class="right">
                        中国企业联合会
                        <br>
                        中国企业家协会
                    </div>
                </li>
                <li>
                    <div class="left">承办单位：</div>
                    <div class="right">
                        陕西省人民政府
                    </div>
                </li>
                <li>
                    <div class="left">支持单位：</div>
                    <div class="right">                        
                        全国工业和信息化科技成果转化联盟
                        <br>
                        中关村中企慧联先进制造产业技术联盟                                              
                    </div>
                </li>
                <li><div class="left">参加人员：</div>中国企业500强部分代表、陕西省各级县市区政府领导、国内部分县市区领导、全国各地方企联领导（拟200人，其中部分为定向邀请） </li>
           </ul>
        </div>
    </div>--%>
    <div class="con1detailxx">
        <div class="list1">
		    <p class="list1p1"> 活动背景 </p>		
	    </div>
        <div class='con1detailbtxx' style='margin-top:0'>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为深入推进国家战略的部署实施，贯彻落实《关于推进工业文化发展的指导意见》，传播我国两院院士专注执着、艰苦奋斗、不断创新的精神面貌，展示我国近年来在核心基础零部件、关键基础材料、先进基础工艺和产业技术基础等领域所取得的成就，全国工业和信息化科技成果转化联盟携手中国企业联合会，主办此次《大国工业梦》新书发布会暨大国工业梦第一季《工业之心》纪录片开机仪式，旨在将这些鲜为人知的人物与故事以生动的文字以及令人震撼的纪录片的形式展现出来，激发广大科技工作者、制造业从业者、创业者及青少年的创新精神和爱国热情。</p>

        </div>
    </div>
    <div class="maln_r_boxxx" style="background-color:#ffffff;">
        <div class="list1">
		    <p class="list1p1"> 论坛组织 </p>		
	    </div>
        <div class='con1detailbtxx2' style='margin-top:0'>
            <ul>                
                <%--<li><div class="left">时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间：</div>2018年9月1日（星期六）8:30-10:10</li>
                <li><div class="left">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;点：</div>陕西省西安市雁塔区丈八北路1号西安宾馆</li>--%>
                <li>
                    <div class="left">主办单位：</div>
                    <div class="right">
                        中国企业联合会
                        <br>
                        中国企业家协会
                    </div>
                </li>
                <li>
                    <div class="left">承办单位：</div>
                    <div class="right">
                        陕西省人民政府
                    </div>
                </li>
                <li>
                    <div class="left">支持单位：</div>
                    <div class="right">                        
                        全国工业和信息化科技成果转化联盟
                        <br>
                        中关村中企慧联先进制造产业技术联盟
                                                
                    </div>
                </li>
               
           </ul>
        </div>
    </div>

    <div class="luntanmudi" >
        <div class="list1">
		    <p class="list1p1"> 拟邀嘉宾 </p>		
	    </div>
        <div class='niyaojiabin' style='margin-top:0;height:700px;'>
            <ul>
                <%=picspzj %>
                <%--<li>                
                    <div class="nyjbleft">
                        <img src="images/renwu1.png" width="190px" height="210px"></div>
                    <div class="nyjbright">
                        <p>朱宏任</p>
                        <span>中国企业联合会、中国企业家协会常务副会长兼理事长 工业和信息化部原总工程师</span>
                    </div>            
                </li>
                <li>                
                    <div class="nyjbleft">
                        <img src="img/renwu1.png" width="190px" height="210px"></div>
                    <div class="nyjbright">
                        <p>曹春晓</p>
                        <span>中国科学院院士，中国航发北京航空材料研究院高级顾问、研究员、博士生导师</span>
                    </div>            
                </li>--%>
                <%--<li>             
                    <div class="nyjbleft">
                        <img src="img/renwu2.png"></div>
                    <div class="nyjbright">
                        <p>柳百成</p>
                        <span>中国工程院院士，清华大学材料学院、机械工程学院教授，国家制造强国建设战略咨询委员会委员</span>
                    </div>                 
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="img/renwu3.png"></div>
                    <div class="nyjbright">
                        <p>王小谟</p>
                        <span>中国工程院院士，中国电子科技集团公司电子科学研究院名誉院长</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="img/renwu4.png"></div>
                    <div class="nyjbright">
                        <p>王贻芳</p>
                        <span>中国科学院院士，中国科学院高能物理研究所所长、研究员</span>
                    </div>
                </li>--%>
                <%--<li>
                    <div class="nyjbleft">
                        <img src="http://www.miit-kjcg.com/upload/20180815161813.13.jpg" width="190px" height="210px"></div>
                    <div class="nyjbright">
                        <p>刘宝恒</p>
                        <span>中央电视台财经频道《中国财经报道》栏目主编、《大国重器》总导演</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="http://www.miit-kjcg.com//upload/20180815162325.25.png" width="190px" height="210px"></div>
                    <div class="nyjbright">
                        <p>陈玉涛</p>
                        <span>全国工业和信息化科技成果转化联盟常务副理事长</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="img/renwu5.png" width="190px" height="210px"></div>
                    <div class="nyjbright">
                        <p>屈贤明</p>
                        <span>国家制造强国建设战略咨询委委员、工信部智能制造专家委员会副主任、中国工程院制造业研究室主任</span>
                    </div>
                </li>--%>
                <%--<li>
                    <div class="nyjbleft">
                        <img src="img/renwu6.png"></div>
                    <div class="nyjbright">
                        <p>宋志明</p>
                        <span>工业和信息化部规划司副司长</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="img/renwu7.png"></div>
                    <div class="nyjbright">
                        <p>吴义国</p>
                        <span>工业和信息化部财务司副司长</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="img/renwu8.png"></div>
                    <div class="nyjbright">
                        <p>傅成玉</p>
                        <span>全国政协常委，中国石油化工集团公司原董事长、党组书记	</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="img/renwu9.png"></div>
                    <div class="nyjbright">
                        <p>邹大挺 </p>
                        <span>国家科学技术奖励工作办公室原主任</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="img/renwu10.png"></div>
                    <div class="nyjbright">
                        <p>栾  军</p>
                        <span>国家电网公司原党组成员、副总经理</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="img/renwu11.png"></div>
                    <div class="nyjbright">
                        <p>徐井宏</p>
                        <span>清华控股有限公司原董事长</span>
                    </div>
                </li>--%>
            </ul>
        </div>
    </div>
    <div class="luntanmudi" >
        <div class="list1">
		    <p class="list1p1"> 拟邀媒体 </p>		
	    </div>
        <div class='luntanmudir2' style='margin-top:0'>
            <p>中国中央电视台/央视网、新华社/新华网、中新网、中国网、China Daily、人民网、人民日报、美通社、中国证券报/中证网、上海证券报/中国证券网、中国经营报、经济日报、南方都市报、科技日报、网易、新华网、搜狐、新浪、腾讯等100余家媒体单位参与报道。新浪财经频道现场直播，并制作专题页面，滚动宣传一年。</p>
           
        </div>
    </div>
    <div class="luntanmudi" >
        <div class="list1">
		    <p class="list1p1"> 会议议程 </p>		
	    </div>
        <div class='luntanmudir3' style='margin-top:0'>
            <p class="blue12sdg ">&nbsp;&nbsp;主持人：陈玉涛 全国工业和信息科技成果转化联盟常务副理事长</p>
            <table border="1" cellspacing="0" class="MsoNormalTable" style="border-collapse:collapse;width:1058px;margin-left:6.7500pt;margin-right:6.7500pt;mso-table-layout-alt:fixed;border:none;mso-border-left-alt:0.5000pt solid rgb(141,179,226);mso-border-top-alt:0.5000pt solid rgb(141,179,226);mso-border-right-alt:0.5000pt solid rgb(141,179,226);mso-border-bottom-alt:0.5000pt solid rgb(141,179,226);mso-border-insideh:0.5000pt solid rgb(141,179,226);mso-border-insidev:0.5000pt solid rgb(141,179,226);mso-padding-alt:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;">
                <tr  class="trbg">
                    <td colspan="2" valign="center" width="567">
                        <p align="center" class="MsoNormal">
                            <b><span>2018年9月1日（星期六下午）</span></b></p>
                    </td>
                </tr>
               
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>13:30-13:40</span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>现场预热，纪录片《工业之心》宣传片放映</span></p>
                    </td>
                </tr>
                <tr  class="trbg">
                    <td colspan="2" valign="center" width="567">
                        <p align="center" class="MsoNormal">
                            <b><span>第一板块：《大国工业梦》新书发布</span></b><span></span></p>
                    </td>
                </tr>
            
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span><a name="OLE_LINK11">1</a>3:40-13:50</span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>主编报告</span></p>
                        <p class="MsoNormal">
                            <span>发言人：朱宏任 &nbsp;中国企业联合会、中国企业家协会常务副会长兼理事长</span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>13:50-14:10</span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>院士代表讲话</span></p>
                        <p class="MsoNormal">
                            <span>发言人：曹春晓 &nbsp;中国科学院院士，中国航发北京航空材料研究院高级顾问、研究员、博士生导师</span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>14:10-14:30</span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>新书发布和开机仪式</span></p>
                    </td>
                </tr>
                <tr   class="trbg">
                    <td colspan="2" valign="center" width="567">
                        <p align="center" class="MsoNormal">
                            <b><span>第二板块：《工业之心》纪录片开机仪式新闻发布会</span></b><span></span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>14:30-14:40</span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>领导讲话</span></p>
                        <p class="MsoNormal">
                            <span>发言人：工业和信息化部/中国工程院领导</span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>14:40-14:50</span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>《工业之心》纪录片制片人报告</span></p>
                        <p class="MsoNormal">
                            <span>发言人：陈玉涛 &nbsp;全国工业和信息化科技成果转化联盟常务副理事长、中关村中企慧联先进制造产业技术联盟理事长</p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>14:50-15:00</span></p>
                        <p align="center" class="MsoNormal">
                            <span><o:p>&nbsp;</o:p></span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>《工业之心》纪录片导演介绍方案</span></p>
                        <p class="MsoNormal">
                            <span>发言人：刘宝恒 &nbsp;CCTV大型纪录片《大国重器》、《五年规划》总导演</span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>15:00-15:10</span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>专家讲话</span></p>
                        <p class="MsoNormal">
                            <span>发言人：屈贤明 &nbsp;国家制造强国建设战略咨询委委员、工信部智能制造专家委员会副主任、中国工程院制造业研究室主任</span></p>
                    </td>
                </tr>
            </table>
        </div>
    </div>
     
    
</div>
   
    <uc1:footer runat="server" id="footer" />
</body>
</html>
