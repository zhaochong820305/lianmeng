<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shownews.aspx.cs" Inherits="shownews" %>
<%@ Register Src="~/include/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/include/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/include/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<%@ Register Src="~/include/left.ascx" TagPrefix="uc1" TagName="left" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<%=title %>,科技成果评价中心,全国工业和信息化科技成果转化联盟">

<title><%=title %></title>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/lrtk.css" />
<link rel="stylesheet" href="css/css.css" />
    <style  type="text/css">
        tr td{border:1px solid #ccc;}      
    </style>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/koala.min.1.5.js"></script>

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
</head>
<body>
    <uc1:menu runat="server" ID="menu" />
<!--内容-->
<!--con-->
<div class="con1">
    <uc1:left runat="server" ID="left" />

    <%--<div class="conn">
        <div class="conn-top">
            <div class="conn-top-title1">新闻浏览</div>
            <div class="conn-top-title2">&nbsp;新闻阅读</div>
            <div class="conn-top-title3">您当前的位置：新闻浏览&nbsp;></div>
        </div>
        <div class="conn-con">
            <div class="conn-con-c1">
                    <%=content %>
            </div>
        </div>
    </div>--%>
    <div class="con1detail">
			<p class="weizhi"><b>当前位置：</b><a href="/">首页</a> >  <a href="/shownews.aspx?id=<%=id %>"><%=title %></a></p>
			<div class="con1detailbt">
				<div class="madiv">
					<p class="map1"><img src="http://www.liantu.com/api.php?bg=ffffff&fg=000000&gc=000000&el=L&text=http://m.niita.org/shownews.aspx?id=<%=id %>" style="width: 135px; height: 135px;"><br>扫描二维码，分享此文章</p>
					<div class="map2">
						<h2><%=title %></h2>
						<p>供稿：<%=writer %>&nbsp;|&nbsp;<%=cdate %></p>
					</div>
				</div>
				<%=content %>
			</div>
		</div>
</div>
    <uc1:footer runat="server" id="footer" />
</body>
</html>