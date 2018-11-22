<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" enableEventValidation="false" %>

<%@ Register Src="~/include/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/include/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/include/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<%@ Register Src="~/include/left.ascx" TagPrefix="uc1" TagName="left" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<uc1:header runat="server" id="header" />

<body>
<form id="form1" runat="server">
<!--    nav    -->
     <uc1:menu runat="server" ID="menu" />

<!--    main    -->
<div class="main_bj">
	<div class="main_box">
    	<div class=" fl maln_l_box">
        	<div class="banner">
            
<!-- 代码 开始 -->
<div id="fsD1" class="focus">  
    <div id="D1pic1" class="fPic">  
        
        <%=pic %>  
    </div>
    <div class="fbg">  
    <div class="D1fBt" id="D1fBt">  
        <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>1</i></a>  
        <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>2</i></a>  
        <a href="javascript:void(0)" hidefocus="true" target="_self" class="current"><i>3</i></a>  
        <a href="javascript:void(0)" hidefocus="true" target="_self" class=""><i>4</i></a>  
    </div>  
    </div>  
    <span class="prev"></span>   
    <span class="next"></span>    
</div>  
<script type="text/javascript">
	Qfast.add('widgets', { path: "js/terminator2.2.min.js", type: "js", requires: ['fx'] });  
	Qfast(false, 'widgets', function () {
		K.tabs({
			id: 'fsD1',   //焦点图包裹id  
			conId: "D1pic1",  //** 大图域包裹id  
			tabId:"D1fBt",  
			tabTn:"a",
			conCn: '.fcon', //** 大图域配置class       
			auto: 1,   //自动播放 1或0
			effect: 'fade',   //效果配置
			eType: 'click', //** 鼠标事件
			pageBt:true,//是否有按钮切换页码
			bns: ['.prev', '.next'],//** 前后按钮配置class                          
			interval:4000  //** 停顿时间  
		}) 
	})  
</script>
<!-- 代码 结束 -->            
            
            
            </div>
            <!----------------科技头条---------------->
        	<div class="hot">
            	<div class="hot_bt_box fl">
            		<h2 class="hot_bt"><a href="list.aspx?class=63&fl=11">科技头条</a></h2>
                </div>
                <div class="fl">
                    <ul>
                    	<%=loadabout(63,60,20) %>
                    </ul>
                </div>
            </div>
            <script type="text/javascript">
                $('.hot').children('div').eq(1).textSlider({
                    line:4,
                    timer:3000
                });
            </script>
            <!----------------联盟动态---------------->
            <div class="fl news_box">
            	<div class="news_bt_box">
                	<div class="fl cur news_bt"><a href="list.aspx?class=60&fl=11">联盟动态</a></div>
                	<div class="fl news_bt"><a href="list.aspx?class=61&fl=11">联盟公告</a></div>
                	<div class="fl news_bt"><a href="list.aspx?class=62&fl=11">联盟活动</a></div>
                	<div class="fl news_bt"><a href="list.aspx?class=83&fl=15">成员发布</a></div>
                </div>
                <script type="text/javascript">
                    $('.news_bt_box .news_bt').mouseover(function(){
                        $(this).addClass('cur').siblings().removeClass('cur');
                        var number = $('.news_bt_box .news_bt').index(this);
                        $('.news_main>div').eq(number).show().siblings().hide();
                    })
                </script>
                <div class="fl news_main">
                    <div style="display:block;">
                        <ul>                           
                            <%=loadnr(60,60,10) %>
                        </ul>
                    </div>
                    <div>
                        <ul>
                            <%=loadnr(61,60,10) %>
                        </ul>
                    </div>
                    <div>
                        <ul>
                            <%=loadnr(62,60,10) %>
                        </ul>
                    </div>
                    <div>
                        <ul>                           
                            <%--<%=company(2, 34, 10) %>	--%>	
                             <%=loadnr(83,60,10) %>   
                        </ul>
                    </div>
                </div>
            </div>
        </div>
<!----------------sidebar---------------->       
   	  <uc1:left runat="server" ID="left" />
    </div>
</div>
    <div style="width:1140px;margin:0 auto; margin-top:40px;">
        <a href="/gongbohui/qiangji.aspx" target="_blank" ><img alt="2018年中国国际工业博览会工业强基成果专项展上海国家会展中心招开" src="images/gongbohuish.png" /> </a>
    </div>
    <div style="width:1140px;margin:0 auto; margin-top:20px;margin-bottom:20px;">
        <a href="/500qiang/qiyefazhan.aspx" target="_blank" ><img alt="2018年中国500强企业高峰论坛-陕西西安举行" src="images/500qiang.png" /> </a>
    </div>
    <%--<div style="width:1140px;margin:0 auto; margin-top:40px;margin-bottom:20px;">
        <a href="xinxiluntan.aspx" target="_blank" style="float:left;" ><img src="/500qiang/img/a.png" alt="2018年中国500强企业高峰论坛-信息安全产业发展论坛" /> </a>
        <a href="daguogongye.aspx" target="_blank" style="padding-left:25px"><img src="/500qiang/img/b.png" alt="大国工业梦新书发布会-工业之心纪录片开机仪式" /> </a>
    </div>--%>
    <div class="lmlt">
        <div class="lmltleft">
            <a href="../xinxiluntan.aspx" target="_blank"><img src="500qiang/img/a.png" /></a>
            <div class="lmltzhi">
                <div class="zhititle">支持单位</div>
                <div class="zhitu"><img src="500qiang/img/zhu102.png?v=1"></div>
                <div class="zhitext">广东紫晶信息存储技术股份有限公司成立于2010年4月，注册资金人民币1.19亿元，是具国内领先技术的大数据存储解决方案和信息技术服务提供商，可为客户提供从咨询、设计、建设、运营一体化的端到端(End to End)信息技术服务方案。</div>
            </div>
        </div>
        <div class="lmltleft lmltcen"  >
            <a href="../daguogongye.aspx" target="_blank"><img src="500qiang/img/b.png" /></a>
            <div class="lmltzhi">
                <div class="zhititle">支持单位</div>
                <div class="zhitit2">中关村中企慧联先进制造产业技术联盟</div>
                <div class="zhitext"> 中关村中企慧联先进制造产业技术联盟是在北京市民政局注册成立的社会团体法人单位，以承接政府委托，开展先进制造产业技术咨询、培训、战略规划，科技成果转移转化，国际先进制造业技术交流等作为核心工作。同时，作为全国工业和信息化科技成果转化联盟的理事长单位，也承担其对外合作工作。</div>
            </div>
        </div>      

    </div>
    <!----------------政策分析---------------->
    <div class="zhengcefx">
        <div class="zctitle">政策分析</div><div class="zcrigth"><a href="listzheng.aspx?class=83&fl=15" target="_blank">更多》</a></div>
        <div class="zhengcekuang">
            <div class="zcsosuo">
                <div class="zcsosuol">
                    <asp:DropDownList ID="DiZhi" runat="server" Width="150px"></asp:DropDownList> 
                    <asp:DropDownList ID="hangye" runat="server" Width="150px"></asp:DropDownList>
                </div>
                
                <div class="zcsosuor">
                    <asp:TextBox ID="keys" runat="server" CssClass="textb" Text="请输入关键词" OnFocus="onFocusFun(this,&#39;请输入关键词&#39;)" OnBlur="onblurFun(this,&#39;请输入关键词&#39;)" ></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="搜索"  CssClass="buttoncss" OnClick="Button1_Click" />
                </div>
            </div>
            <div class="zcnew">
                <ul> <%=loadzc(63,55,20) %></ul>
            </div>
        </div>
    </div>
    <!----------------资源下载---------------->
    <div style="width:1140px;margin:20px auto;clear:both;">
        <div style="width: 1125px;height: 60px;margin: 0 auto;font-size: 20px;line-height: 60px;padding-left: 15px;">
            <p style="font-size: 20px;border-bottom: 3px solid #005bac;height: 35px;line-height: 35px;width: 80px;">资源下载</p></div>
    <div style="margin-bottom:50px;background:#f8f8f8;color:#666;">
        <ul style="margin-left:20px;">
           <%=strziyuanxiazai %>
            <%--<li style="height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;"><a href="#" class="zyxz_con2_a"><b>>&nbsp;&nbsp;优质制造：</b>本书围绕质量强国，系统介绍了质量变革与先进国家质量提升的经验、国家质量技术基础在促进产业质量升级中的重要作用、我国质量品...</a><a href="#" style="float:right;text-decoration:underline;margin-right:20px;">PDF下载</a></li>
            <li style="height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;"><a href="#" class="zyxz_con2_a"><b>>&nbsp;&nbsp;工业强基：</b>本书强调我国从实现制造大国向制造强国转变，亟需强化工业基础能力。本书有针对性论述了核心基础零部件和元器件、关键基...</a><a href="#" style="float:right;text-decoration:underline;margin-right:20px;">PDF下载</a></li>
            <li style="height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;"><a href="#" class="zyxz_con2_a"><b>>&nbsp;&nbsp;绿色制造：</b>本书阐述了绿色制造、绿色发展、低碳发展、循环发展的含义及相互关系，分析了多个行业绿色制造的概况、关键技术及发展...</a><a href="#" style="float:right;text-decoration:underline;margin-right:20px;">PDF下载</a></li>
            <li style="height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;"><a href="#" class="zyxz_con2_a"><b>>&nbsp;&nbsp;《中国制造2025》解读——省部级干部专题研讨班报告集：</b>本书对《中国制造2025》的战略定位、主要内容和工作部署进行了全面阐述，就智能...</a><a href="#" style="float:right;text-decoration:underline;margin-right:20px;">PDF下载</a></li>
            <li style="height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;"><a href="#" class="zyxz_con2_a"><b>>&nbsp;&nbsp;智能制造：</b>智能制造是实施“中国制造 2025”的主攻方向。本书深入阐述了智能制造的内涵和特征，介绍了大数据时代的数据分析的变革...</a><a href="#" style="float:right;text-decoration:underline;margin-right:20px;">PDF下载</a></li>
            <li style="height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;"><a href="#" class="zyxz_con2_a"><b>>&nbsp;&nbsp;《中国制造2025》重点领域技术创新绿皮书——技术路线图：</b>本书围绕建设制造强国的战略任务和重点，深入研究了新一代信息技术产业...</a><a href="#" style="float:right;text-decoration:underline;margin-right:20px;">PDF下载</a></li>
            <li style="height: 47px;line-height: 47px;border-bottom: 1px #ccc dashed;"><a href="#" class="zyxz_con2_a"><b>>&nbsp;&nbsp;服务型制造：</b>发展服务型制造与我国经济新常态息息相关，它是在全国新一轮科技创新和技术革命推进下，我国制造业增长方式转变和消费模式升级...</a><a href="#" style="float:right;text-decoration:underline;margin-right:20px;">PDF下载</a></li>--%>
        </ul>
    </div>
    </div>

<!----------------main2---------------->  
<div class="main2">
<!----------------联盟成员----------------> 
 	<div class="warp">
		<div class="lm_bt"><p class="fl">联盟成员</p><span class="fl lm_bt_icon"></span></div>
        <div class="lm_bj">
        	<div class="fl lm_button prev1"><a href="javascript:;"><img src="images/left.jpg" /></a></div>
        	<div class="fl lm_main">
                <ul>
                    <%=companyimg(2,34,6) %>
                    <%--<li>
                        <a href=""><img src="images/logo_1.jpg" /></a>
                        <a href=""><img src="images/logo_2.jpg" /></a>
                        <a href=""><img src="images/logo_3.jpg" /></a>
                        <a href=""><img src="images/logo_4.jpg" /></a>
                    </li>
                    <li>
                        <a href=""><img src="images/logo_5.jpg" /></a>
                        <a href=""><img src="images/logo_6.jpg" /></a>
                        <a href=""><img src="images/logo_7.jpg" /></a>
                        <a href=""><img src="images/logo_3.jpg" /></a>
                    </li>
                    <li>
                        <a href=""><img src="images/logo_1.jpg" /></a>
                        <a href=""><img src="images/logo_5.jpg" /></a>
                        <a href=""><img src="images/logo_7.jpg" /></a>
                        <a href=""><img src="images/logo_4.jpg" /></a>
                    </li>--%>
                </ul>
            </div>
        	<div class="fr lm_button next1"><a href="javascript:;"><img src="images/right.jpg" /></a></div>
        </div>
    </div>
    <script type="text/javascript">
       $(document).ready(function() {
           var innerGroup = $(".lm_main ul>li");
           var imgWidth = $(".lm_main ul>li").eq(0).width();
           var _index = 0;
           var timer = null;
           var flag = true;
		   $(".lm_main ul").append('<li>' + $(".lm_main ul > li:first").html()+ '</li>');
           function selectPic(num) {
               $(".lm_main ul").animate({
                   left: -num * imgWidth,
               }, 1000, function() {
                   //检查是否到最后一张
                   if (_index >= innerGroup.length ) {
                       _index = 0;
					   console.log( _index)
                       $(".lm_main ul").css("left", "0px");
                   }
               })
           }
           function autoGo(bol) {
               //自动行走
               if (bol) {
                   timer = setInterval(go,2000);
               }
           }
           autoGo(flag);

           function go() {
               //计时器的函数
               _index++;
               // console.log(_index);
               selectPic(_index);
           }

           $(".lm_bj").hover(function() {
           		// console.log(0+'1')
               //鼠标移入
               clearInterval(timer);
               flag = false;
           }, function() {
               flag = true;
               timer = setInterval(go, 3000);
           });
           $('.next1').on("click", function() {
               //右箭头
               flag = false;
               clearInterval(timer);
               _index++;
               selectPic(_index);
           })
           $('.prev1').on("click", function() {
               //左箭头
               flag = false;
               clearInterval(timer);
               if (_index == 0) {
                   _index = innerGroup.length - 1;
                  $(".lm_main ul").css("left", -(innerGroup.length - 1) * imgWidth);
               }
               _index--;
               selectPic(_index);
           })
       });
       //得到焦点时触发事件
       function onFocusFun(element, elementValue) {
           if (element.value == elementValue) {
               element.value = "";
               element.style.color = "";
           }
       }
       //离开输入框时触发事件
       function onblurFun(element, elementValue) {
           if (element.value == '') {
               element.style.color = "#808080";
               element.value = elementValue;
           }
       }
  	</script>
    <div class="warp clearfix">  
<!----------------科技成果评价---------------->     
 		<div class=" fl l_box">
        	<div class="fl list_box">
            	<div class="list_bt">
                	<p class="fl">科技成果评价</p>
                    <div class="fr more"><a href="list.aspx?class=75&fl=13"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadabout(75,50,5) %>	
                    </ul>
                </div>
            </div>
        	<div class="fl list_box">
            	<div class="list_bt">
                	<p class="fl">政策解析</p>
                    <div class="fr more"><a href="list.aspx?class=76&fl=13"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadabout(76,50,5) %>	
                    
                    </ul>
                </div>
            </div><!----------------科技头条---------------->
        	<div class="fl list_box" style=" margin-bottom:0;">
            	<div class="list_bt">
                	<p class="fl">制造业创新中心</p>
                    <div class="fr more"><a href="list.aspx?class=77&fl=13"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadabout(77,50,5) %>
                    
                    </ul>
                </div>
            </div>
        	<div class="fl list_box" style=" margin-bottom:0;">
            	<div class="list_bt">
                	<p class="fl">产业创新服务</p>
                    <div class="fr more"><a href="list.aspx?class=78&fl=13"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadabout(78,50,5) %>
                    
                    </ul>
                </div>
        	</div>
 		</div>  
<!----------------行业专家 ---------------->     
 		<div class=" fr r_box">
        	<div class="experts_box">
            	<div class="experts_bt_box">
                	<div class="fl experts_bt cur2"><a href="listzj.aspx?class=49&fl=4">行业专家</a></div>
                	<div class="fl experts_bt"><a href="listzj.aspx?class=50&fl=4">专家观点</a></div>
                </div>
                <div class="fl experts_list">
                    <div style="display: block;">
                    	<ul>                        	
                        	<%=zhuanjia(49,50,3) %>
                        </ul>
                    </div>
                    <div>
                        <ul>
                           <%=zhuanjia(50,50,3) %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $('.experts_bt_box .experts_bt').mouseover(function(){
                $(this).addClass('cur2').siblings().removeClass('cur2');
                var number = $('.experts_bt_box .experts_bt').index(this);
                $('.experts_list>div').eq(number).show().siblings().hide();
            })
        </script>  
    </div>
</div>     

<!----------------科技成果转化基地---------------->
<div class="jidi">
	<div class="warp jidi_warp">
        	<div class="fl list_box" style="margin:0 30px 0 0;">
            	<div class="list_bt">
                	<p class="fl">科技成果转化基地</p>
                    <div class="fr more"><a href="list.aspx?class=79&fl=13"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadabout(79,52,5) %>	
                    
                    </ul>
                </div>
            </div>
        	<div class="fl list_box" style="margin:0 30px 0 0;">
            	<div class="list_bt">
                	<p class="fl">政策大讲堂</p>
                    <div class="fr more"><a href="list.aspx?class=80&fl=13"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadabout(80,48,5) %>
                    </ul>
                </div>
            </div>
        	<div class="fl list_box" style="margin:0;">
            	<div class="list_bt">
                	<p class="fl">创新创业大赛</p>
                    <div class="fr more"><a href="list.aspx?class=81&fl=13"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadabout(81,48,5) %>                    
                    </ul>
                </div>
            </div>
    </div>
</div>
<!----------------footer---------------->
 <uc1:footer runat="server" id="footer" />
</form>
</body>
</html>

