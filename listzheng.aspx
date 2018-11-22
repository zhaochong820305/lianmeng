<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listzheng.aspx.cs" Inherits="listzheng" enableEventValidation="false"%>

<%@ Register Src="~/include/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/include/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/include/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<%@ Register Src="~/include/left.ascx" TagPrefix="uc1" TagName="left" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<%=classname %>,科技成果评价中心,全国工业和信息化科技成果转化联盟">
   
<title><%=classname %>-全国工业和信息化科技成果转化联盟</title>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/lrtk.css" />
<link rel="stylesheet" href="css/css.css" />
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
</head>
    
<body>
<form id="form1" runat="server">

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
				<p class="list1p1"><%=classname %></p>
				<p class="weizhi"><b>当前位置：</b><a href="/">首页</a>><a href="/list.aspx?class=<%=id %>&fl=<%=fl %>"><%=classname %></a></p>
			</div>
     <div class='con1detailbt' style='margin-top:0'>   
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
    <%=content %>

    </div>
        <uc1:left runat="server" ID="left" />
</div>
    <uc1:footer runat="server" id="footer" />
</form>
</body>
</html>
