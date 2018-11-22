<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/include/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/include/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/include/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<%@ Register Src="~/include/left.ascx" TagPrefix="uc1" TagName="left" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<uc1:header runat="server" id="header" />

<body>
<!----------------nav---------------->
<uc1:menu runat="server" ID="menu" />

<!----------------main---------------->
<div class="main_bj">
<div class="warp" style=" height:834px;">
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
            <!----------------项目需求---------------->
        	<div class="xuqiu">
            	<div class="xuqiu_bt_box fl">
            		<h2 class="xuqiu_bt">会员需求</h2>
                    <p>会员企业的政策、融资、收购、被收购、产业链合作、对接政府等需求，以便尽快得到发展所需要的资源；<br>
社会资本，发布资本所关注的领域、投资的资本量级、投资的阶段偏好等，以便获取更多的企业需求。 </p>
                </div>
            </div>
            </div>
<!----------------sidebar---------------->       
 <div class=" fr maln_r_box">
        	<div class="fl sid_t1">
        	  <p><a href="/list.aspx?class=86&fl=16">强基政策</a></p>
            </div>
            <div class="fl sid">
            	<ul>                	
                	<%=loadnr(86,40,5) %>
                </ul>
            </div>
        	<div class="fl sid_t1">
        	  <p><a href="/list.aspx?class=88&fl=16">政策解读</a></p>
            </div>
            <div class="fl sid">
            	<ul>
                	<%=loadnr(88,40,5) %>
                </ul>
            </div>
        
      </div> 
    </div> 
<!----------------强基项目----------------> 
 	<div class="warp">
    	<div class="fl xiangmu_bt">强基工程</div>
        <div class="fl xiangmu_box clearfix">
                	<div class="fl xiangmu_x"><a href="">公示项目</a></div>
                	<div class="fl xiangmu_x"><a href="">征集项目</a></div>
                    <div class="fl xiangmu_x"><a href="">四基目录</a></div>
        </div>
        <div id='xmdiv'>
          <div class="xiangmu_list clearfix">
            <div class="fl xiangmu_list_box">
                <h2>基础原材料</h2>
                <ul>
                    <%=Technology(166,50,3) %>
                    <li><a href="/listtech.aspx?class=166&fl=21">• 更多...</a></li>
                  <span class="icon1"></span>
                </ul>
            </div>
            <div class="fl xiangmu_list_box">
                <h2>基础工艺</h2>
                <ul>
                    <%=Technology(167,50,3) %>
                    <li><a href="/listtech.aspx?class=167&fl=21">• 更多...</a></li>
                  <span class="icon2"></span>
              </ul>
            </div>
            <div class="fl xiangmu_list_box">
                  <h2>基础零部件</h2>
                  <ul>
                    <%=Technology(168,50,3) %>
                      <li><a href="/listtech.aspx?class=168&fl=21">• 更多...</a></li>
                    <span class="icon3"></span>
                </ul>
            </div>
            <div class="fl xiangmu_list_box" style="margin:0;">
                <h2>基础平台</h2>
                <ul>
                  <%=Technology(169,50,3) %>
                    <li><a href="/listtech.aspx?class=169&fl=21">• 更多...</a></li>
                  <span class="icon4"></span>
              </ul>
            </div>
          </div>
          <div class="xiangmu_list clearfix">
            <div class="fl xiangmu_list_box">
                <h2>核心基础零部件（元器件）</h2>
                <ul>
                   <%=Technology(170,50,3) %>
                    <li><a href="/listtech.aspx?class=170&fl=21">• 更多...</a></li>
                  <span class="icon5"></span>
                </ul>
            </div>
            <div class="fl xiangmu_list_box">
                <h2>关键基础材料</h2>
                <ul>
                 <%=Technology(171,50,3) %>
                    <li><a href="/listtech.aspx?class=171&fl=21">• 更多...</a></li>
                  <span class="icon6"></span>
              </ul>
            </div>
            <div class="fl xiangmu_list_box">
                  <h2>先进基础工艺</h2>
                  <ul>
                    <%=Technology(172,50,3) %>
                      <li><a href="/listtech.aspx?class=172&fl=21">• 更多...</a></li>
                    <span class="icon7"></span>
                </ul>
            </div>
            <div class="fl xiangmu_list_box" style="margin:0;">
                <h2>产业技术基础</h2>
                <ul>
                 <%=Technology(173,50,3) %>
                    <li><a href="/listtech.aspx?class=173&fl=21">• 更多...</a></li>
                  <span class="icon8"></span>
              </ul>
            </div>
          </div>
          <div class="xiangmu_list clearfix">
            <div class="fl xiangmu_list_box">
                <h2>零部件（元器件）</h2>
                <ul>
                   <%=Technology(170,50,3) %>
                    <li><a href="/listtech.aspx?class=170&fl=21">• 更多...</a></li>
                  <span class="icon5"></span>
                </ul>
            </div>
            <div class="fl xiangmu_list_box">
                <h2>关键材料</h2>
                <ul>
                 <%=Technology(171,50,3) %>
                    <li><a href="/listtech.aspx?class=171&fl=21">• 更多...</a></li>
                  <span class="icon6"></span>
              </ul>
            </div>
            <div class="fl xiangmu_list_box">
                  <h2>先进工艺</h2>
                  <ul>
                    <%=Technology(172,50,3) %>
                      <li><a href="/listtech.aspx?class=172&fl=21">• 更多...</a></li>
                    <span class="icon7"></span>
                </ul>
            </div>
            <div class="fl xiangmu_list_box" style="margin:0;">
                <h2>产业技术</h2>
                <ul>
                 <%=Technology(173,50,3) %>
                    <li><a href="/listtech.aspx?class=173&fl=21">• 更多...</a></li>
                  <span class="icon8"></span>
              </ul>
            </div>
          </div>
        </div>
        
         


 	</div>

    

  <script type='text/javascript'>
    $('.xiangmu_box>div').mouseover(function(){
      var index = $(this).index();
	  $(this).addClass('cur').siblings().removeClass('cur');
      $('#xmdiv .xiangmu_list').eq(index).show().siblings('.xiangmu_list').hide()
    }).eq(0).mouseover()
  </script>
</div>
</div>

    <div style="width:1140px;margin:0 auto;">
        <div style="width: 1125px;height: 60px;margin: 0 auto;font-size: 20px;line-height: 60px;color: #666;font-weight: bold;padding-left: 15px;">资源下载</div>
    <div style="margin-bottom:50px;background:#ddd;color:#666;">
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
    <div class="warp clearfix">  
<!----------------科技成果评价---------------->     
 		<div class=" fl l_box">
        	<div class="fl list_box">
            	<div class="list_bt">
                	<p class="fl">强基新闻</p>
                    <div class="fr more"><a href="/list.aspx?class=90&fl=17"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadnr(90,50,6) %>
                    
                    </ul>
                </div>
            </div>
        	<div class="fl list_box">
            	<div class="list_bt">
                	<p class="fl">会员动态</p>
                    <div class="fr more"><a href="/list.aspx?class=91&fl=17"><img src="images/more_bef.png" /></a></div>
              </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadnr(91,50,6) %>
                    
                    </ul>
                </div>
            </div>
 		</div>  
<!----------------评价服务 ---------------->     
 		<div class=" fr r_box">
        	<div class="experts_box">
           	  <div class="experts_bt_box clearfix">
                	<div class="fl experts_bt cur2"><a href="/list.aspx?class=95&fl=19">评价服务</a></div>
                </div>
                <div class="fl experts_list pj_list">
                	<%=loadnr(95,42,6) %>
                </div>
            </div>
        </div>  
    </div>
</div>     

<!----------------会员介绍---------------->
<div class="jidi">
	<div class="warp jidi_warp">
        	<div class="fl list_box" style="margin:0 30px 0 0;">
            	<div class="list_bt">
                	<p class="fl">会员介绍</p>
                    <div class="fr more"><a href="/listcy.aspx?class=95&fl=19"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=company(61,50,5) %>
                    
                    </ul>
                </div>
            </div>
        	<div class="fl list_box" style="margin:0 30px 0 0;">
            	<div class="list_bt">
                	<p class="fl">基金介绍</p>
                    <div class="fr more"><a href="/list.aspx?class=102&fl=21"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadnr(102,50,6) %>
                    
                    </ul>
                </div>
            </div>
   	  <div class="fl list_box" style="margin:0;">
            	<div class="list_bt">
                	<p class="fl">成功案例</p>
                	<div class="fr more"><a href="/list.aspx?class=103&fl=21"><img src="images/more_bef.png" /></a></div>
                </div>
                <div class="pj_list">
                	<ul>
                    	<%=loadnr(103,50,6) %>
                    
                    </ul>
                </div>
            </div>
    </div>
</div>
<!----------------footer---------------->
<uc1:footer runat="server" id="footer" />


</body>
</html>
