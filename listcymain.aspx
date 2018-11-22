<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listcymain.aspx.cs" Inherits="listcymain" %>

<%@ Register Src="~/include/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/include/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/include/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<%@ Register Src="~/include/left.ascx" TagPrefix="uc1" TagName="left" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<uc1:header runat="server" id="header" />
    
<body>
    <uc1:menu runat="server" ID="menu" />
<!--内容-->
<!--con-->
<div class="con1">


    <%--<div class="conn">
        <div class="conn-top">
            <div class="conn-top-title1"><%=classname %></div>
            <div class="conn-top-title2">&nbsp;<%=classname %></div>
            <div class="conn-top-title3">您当前的位置：&nbsp;></div>
        </div>
       <%=content %>
    </div>--%>
<div class="con1detail conlist">
    <div class="list1">
				<p class="list1p1"><a href="/listcy.aspx?class=<%=id %>&fl=<%=fl %>">会员信息</a></p>
				<p class="weizhi"><b>当前位置：</b><a href="/">首页</a>><a href="/listcy.aspx?class=<%=id %>&fl=<%=fl %>">会员信息</a></p>
			</div>
    <%=content %>
     <div class="list1">
				<p class="list1p1"><a href="/list.aspx?class=83&fl=15">企业动态</a></p>
				<p class="weizhi"><b>当前位置：</b><a href="/">首页</a>><a href="/list.aspx?class=83&fl=15">企业动态</a></p>
			</div>
    <%--  <%=content %>--%>
    <div class='con1detailbt' style='margin-top:0'>    <ul  class='listulnew' >
    <%=loadnr(83,60,5) %> 
        </ul>  </div>

    

    </div>
     

        <uc1:left runat="server" ID="left" />
</div>
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
  	</script>
    <uc1:footer runat="server" id="footer" />
</body>
</html>
