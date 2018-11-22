<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xinxiluntan.aspx.cs" Inherits="xinxiluntan" %>
<%@ Register Src="~/include/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/include/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/include/menu.ascx" TagPrefix="uc1" TagName="menu" %>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="2018中国500强企业高峰论坛-信息安全产业发展论坛,科技成果评价中心,全国工业和信息化科技成果转化联盟">   
<title>2018中国500强企业高峰论坛-信息安全产业发展论坛</title>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/lrtk.css" />
<link rel="stylesheet" href="css/css.css" />
<link href="css/xinxiluntan.css?v=20180823" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/koala.min.1.5.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>

<script type="text/javascript">
    (function($){
        $.fn.textSlider = function(options){
            var defaults = {
            scrollHeight:25,
            line:1,
            speed:'normal',
            timer:3000
        };
        var opts = $.extend(defaults,options);
            this.each(function(){
                var timerID;
                var obj = $(this);
                var $ul = obj.children("ul");
                var $height = $ul.find("li").height();
                var $Upheight = 0-opts.line*$height;
                obj.hover(function(){
                clearInterval(timerID);
                },function(){
                    timerID = setInterval(moveUp,opts.timer);
                });
                function moveUp(){
                    $ul.animate({"margin-top":$Upheight},opts.speed,function(){
                        for(i=0;i<opts.line;i++){
                            $ul.find("li:first").appendTo($ul);
                        }
                        $ul.css("margin-top",0);
                    });
                };
                timerID = setInterval(moveUp,opts.timer);
            });
        };
    })(jQuery)
</script>
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
    <div class="banners"><img src="images/banner1.png" /></div>
    <div class="luntanmudi" >
        <div class="list1">
		    <p class="list1p1"> 新闻报道 </p>	
            <p class="list1p1right"><a href="list.aspx?class=1199&fl=1" target="_blank"> 更多》 </p>		
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
                <%=loadnr(1199,70,8) %>
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
    <div class="con1detailxx">
        <div class="list1">
		    <p class="list1p1"> 论坛背景 </p>		
	    </div>
        <div class='con1detailbtxx' style='margin-top:0'>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大数据时代背景下，信息化建设成为国家战略，数据安全已经与政治安全、经济安全、国防安全、文化安全共同成为国家安全的重要组成部分。人们的正常生活越来越依靠这些关键基础设施的正常运转，信息空间已经成为国家主权的延伸，成为继领土、领海、领空之外的“第四空间”。十九大报告指明了国家未来网络安全建设的思想和方向。2017年全球信息安全产品与服务开支将达到870亿美元，相比2016年增长7%，预计2018年开支将增长至945亿美元。但以美国为主导的北美市场仍然占据全球最大的市场份额。</p>
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
                        <br>
                        广东紫晶信息存储技术股份有限公司                        
                    </div>
                </li>
                <li><div class="left">参加人员：</div>
                    <div class="ft36">中国企业500强部分代表、陕西省各级县市区政府领导、国内部分县市区领导、全国各地方企联领导（拟200人，其中部分为定向邀请）</div> </li>
           </ul>
        </div>
    </div>
    <div class="luntanmudi" >
        <div class="list1">
		    <p class="list1p1"> 论坛目的 </p>		
	    </div>
        <div class='luntanmudir' style='margin-top:0'>
            <p class="blue12s">（一）落实国家产业政策</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次信息安全产业发展论坛的举办，是贯彻落实《中国制造2025》，推动《促进大数据发展行动纲要》，落实《“十三五”国家战略性新兴产业发展规划》，推进《大数据产业发展规划（2016-2020年）》，顺应工业强基工程重点任务的发展要求，实施国家大数据战略，加强海量数据存储等关键技术攻关，超前布局战略性产业，在信息网络领域推动非易失存储的开发应用，旨在提升信息安全的存储器产业竞争实力，为推动中国制造由大变强提供战略支撑。</p>
       
            <br>
            <p class="blue12s">（二）推进工业强基一条龙示范应用</p>
            <p>1.完善工业强基存储器一条龙上下游产业链。</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;《工业强基工程实施指南（2016-2020 年）》中提出了16个重点产品、工艺“一条龙”应用计划，其中就包括存储器“一条龙”应用计划，旨在积极拓展服务器、台式计算机、笔记本电脑、平板电脑及手机等终端应用中 CPU 和存储器有效保障水平，逐步形成较完整的上下游产业链和具有竞争力的价值链，提升整机产品的安全可控能力、信息安全的保障能力和存储器产业竞争实力。目前存储器“一条龙”应用计划正在有序推进中。本次信息安全产业发展论坛，也是完善存储器一条龙上下游企业的沟通交流平台的举措。</p>
            <br>
            <p>2.推进智慧医疗、智能存储 、灾备存储和云存储大数据的产业协同。</p>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;随着信息技术与经济社会的交汇融合，数据也成为关键性的战略资源。大数据不仅激发新的商业模式，催生新的业态，同时也改变着人们的生活方式及社交方式。大数据已被广泛应用于智慧医疗、灾备存储中心、云存储大数据中心、教育、金融等多个领域中，并取得了较好的效果。
            </p>
            <br>
        
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;以医疗行业为例，通过将居民电子健康档案、电子病历、电子处方等数据收集、存储并形成数据流，不仅能使医生系统了解病人的病史、快速做出诊断，还能使医疗机构实现临床和科研数据资源整合共享、提升医学科研及应用效能。在国家层面，更有利于加强对医疗机构监管，助推医疗、医保、医药联动改革，还能通过及时掌握和动态分析全人群疾病发生趋势及全球传染病疫情信息，提高突发公共卫生事件预警与应急响应能力。</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在数据应用的同时，信息安全也成为一个更为关键的议题。只要切实保障信息安全，加强行业自律，完善行业监管，才能促进数据资源有序流动与规范利用，才能实现大数据行业的可持续发展。</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次信息安全产业发展论坛，亦旨在不断推进智慧医疗和智能存储，灾备存储与云存储大数据上下游企业之间的对接。</p>
        </div>
    </div>
    <div class="luntanmudi" >
        <div class="list1">
		    <p class="list1p1"> 拟邀嘉宾 </p>		
	    </div>
        <div class='niyaojiabin' style='margin-top:0'>
            <ul>
                <%=picspzj %>
               <%-- <li>                
                    <div class="nyjbleft">
                        <img src="images/renwu1.png"></div>
                    <div class="nyjbright">
                        <p>朱宏任</p>
                        <span>中国企业联合会、中国企业家协会常务副会长兼理事长 工业和信息化部原总工程师</span>
                    </div>            
                </li>--%>
                <%--<li>             
                    <div class="nyjbleft">
                        <img src="images/renwu2.png"></div>
                    <div class="nyjbright">
                        <p>倪光南</p>
                        <span>中国工程院院士 中国科学院计算技术研究所研究员</span>
                    </div>                 
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="images/renwu7.png"></div>
                    <div class="nyjbright">
                        <p>谢长生</p>
                        <span>武汉光电国家实验室副主任 信息存储系统教育部重点实验室主任 华中科技大学教授、博士生导师</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="images/renwu3.png"></div>
                    <div class="nyjbright">
                        <p>邬江兴</p>
                        <span>中国工程院院士 中国人民解放军信息工程大学教授</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="images/renwu4.png"></div>
                    <div class="nyjbright">
                        <p>金小桃</p>
                        <span>中国卫生信息与健康医疗大数据学会会长 国家卫生和计划生育委员会原副主任、党组成员</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="images/renwu5.png"></div>
                    <div class="nyjbright">
                        <p>李新社</p>
                        <span>国家工业信息安全发展研究中心副主任</span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="images/renwu6.png"></div>
                    <div class="nyjbright">
                        <p>谭小地</p>
                        <span>北京理工大学教授、博士生导师</span>
                    </div>
                </li>
                
                <li>
                    <div class="nyjbleft">
                        <img src="images/renwu8.png"></div>
                    <div class="nyjbright">
                        <p>平安集团</p>
                        <span></span>
                    </div>
                </li>
                <li>
                    <div class="nyjbleft">
                        <img src="images/renwu9.png"></div>
                    <div class="nyjbright">
                        <p>京东集团</p>
                        <span></span>
                    </div>
                </li>--%>
            </ul>
        </div>
    </div>
     
    <div class="luntanmudi" >
        <div class="list1">
		    <p class="list1p1"> 会议议程 </p>		
	    </div>
        <div class='luntanmudir3' style='margin-top:0'>
            <br />
            <p class="blue12s">&nbsp;&nbsp;信息安全产业发展论坛： 2018年9月1日（星期六10:30-12:10）</p>	
            
            <table border="1" cellspacing="0" class="MsoNormalTable" style="border-collapse:collapse;width:1058px;margin-left:6.7500pt;margin-right:6.7500pt;mso-table-layout-alt:fixed;border:none;mso-border-left-alt:0.5000pt solid rgb(141,179,226);mso-border-top-alt:0.5000pt solid rgb(141,179,226);mso-border-right-alt:0.5000pt solid rgb(141,179,226);mso-border-bottom-alt:0.5000pt solid rgb(141,179,226);mso-border-insideh:0.5000pt solid rgb(141,179,226);mso-border-insidev:0.5000pt solid rgb(141,179,226);mso-padding-alt:0.0000pt 5.4000pt 0.0000pt 5.4000pt ;">
               
                <tr  class="trbg">
                    <td colspan="2" valign="center" width="567">
                        <p align="center" class="MsoNormal">
                            <b><span>第一板块：光存储一条龙主旨工作报告（30分钟）</span></b><span><o:p></o:p></span></p>
                    </td>
                </tr>
                <tr>
                    <td rowspan="2" valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span><a name="OLE_LINK11">10</a>:30-10:40<o:p></o:p></span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>陕西省委领导/西安市委领导致辞<o:p></o:p></span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>院士/专家关于信息安全产业发展报告<o:p></o:p></span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>10:40-10:50<o:p></o:p></span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>工信部工业强基课题组关于推进“存储器”一条龙工作报告<o:p></o:p></span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>10:50-11:00<o:p></o:p></span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>紫晶信息关于承接工业强基一揽子重点任务工作报告<o:p></o:p></span></p>
                    </td>
                </tr>
                <tr  class="trbg">
                    <td colspan="2" valign="center" width="567">
                        <p align="center" class="MsoNormal">
                            <b><span>第二板块：智慧医疗&nbsp;智能存储圆桌对话（30分钟）</span></b><span><o:p></o:p></span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>11:00-11:30<o:p></o:p></span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <b><span>主持人：<o:p></o:p></span></b></p>
                        <p class="MsoNormal">
                            <span>李新社 &nbsp;&nbsp;&nbsp;&nbsp;国家工业信息安全发展研究中心副主任<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <b><span>讨论嘉宾：<o:p></o:p></span></b></p>
                        <p class="MsoNormal">
                            <span>金小桃&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中国卫生信息与健康医疗大数据学会会长<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>谢长生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;武汉光电国家实验室副主任，“信息存储系统”教育部重点实验室主任<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>郑&nbsp;&nbsp;&nbsp;穆&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;广东紫晶信息存储技术股份有限公司董事长<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>沈寓实&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;世纪互联集团有限公司首席技术官</span></p>
                        <p class="MsoNormal">
                            <span>陈&nbsp;&nbsp;&nbsp;建&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;平安集团首席信息安全总监</span></p>
                        <p class="MsoNormal">
                            <span>陕西移动&nbsp;&nbsp; </span></p>
                         
                    </td>
                </tr>
              
                <tr   class="trbg">
                    <td colspan="2" valign="center" width="567">
                        <p align="center" class="MsoNormal">
                            <b><span>第三板块：发布会（15分钟）</span></b><span><o:p></o:p></span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>11:40-11:45<o:p></o:p></span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>《工业强基光存储一条龙》新书发布<o:p></o:p></span></p>
                    </td>
                </tr>
                <tr   class="trbg">
                    <td colspan="2" valign="center" width="567">
                        <p align="center" class="MsoNormal">
                            <b><span>第四板块：光存储系统架构标准化委员会成立仪式（10分钟）</span></b><span><o:p></o:p></span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>11:45-11:55<o:p></o:p></span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>中关村中企慧联先进制造产业技术联盟<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>清华大学软件学院<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>北京理工大学<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>武汉光电国家实验室<o:p></o:p></span></p>
                    </td>
                </tr>
                <tr   class="trbg">
                    <td colspan="2" valign="center" width="567">
                        <p align="center" class="MsoNormal">
                            <b><span>第五板块：签约仪式（15分钟）</span></b><span><o:p></o:p></span></p>
                    </td>
                </tr>
                <tr>
                    <td valign="center" width="95">
                        <p align="center" class="MsoNormal">
                            <span>11:55-12:10<o:p></o:p></span></p>
                        <p align="center" class="MsoNormal">
                            <span><o:p>&nbsp;</o:p></span></p>
                    </td>
                    <td valign="center" width="471">
                        <p class="MsoNormal">
                            <span>1.中关村中企慧联先进制造产业技术联盟与紫晶存储签约<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>2.卫计委济南大数据中心与紫晶存储签约<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>3.北京理工大学与紫晶存储签约<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>4.陕西移动与紫晶存储签约<o:p></o:p></span></p>
                        <p class="MsoNormal">
                            <span>5.绵阳游仙区与紫晶存储签约<o:p></o:p></span></p>
                    </td>
                </tr>
            </table>
        </div>
    </div>
     
    <div class="luntanmudi" >
        <div class="list1">
		    <p class="list1p2"> 论坛推广与媒体报道 </p>		
	    </div>
        <div class='luntanmudir2' style='margin-top:0'>
            <p>腾讯视频现场直播，并制作专题页面，滚动宣传一年；全国工业和信息化科技成果转化联盟制作专题页面，滚动宣传一年。</p>
            <p>中国中央电视台/央视网、新华社/新华网、中新网、中国网、China Daily、人民网、人民日报、美通社、中国证券报/中证网、上海证券报/中国证券网、中国经营报、经济日报、南方都市报、科技日报、网易、新华网、搜狐、新浪、腾讯等100余家媒体单位参与报道。</p>
           
        </div>
    </div>
</div>
   
    <uc1:footer runat="server" id="footer" />
</body>
</html>
