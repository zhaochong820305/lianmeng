<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showzj.aspx.cs" Inherits="showzj" %>

<%@ Register Src="~/include/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/include/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/include/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<%@ Register Src="~/include/left.ascx" TagPrefix="uc1" TagName="left" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="<%=classname %>行业专家,工业强基服务网">
<title><%=classname %>行业专家-工业强基服务网</title>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/lrtk.css" />
    <link rel="stylesheet" href="css/css.css" />
     <style  type="text/css">

        .clear{zoom:1; overflow:hidden;}
.clear:after{content:"";display:block;clear:both;}
.clear:before{content:"";display:block;}
.zuzhang{margin:0 0 20px 30px;}
.zuzhang img{float:left;}
.zuzhang .zjjs{float:left; margin-left:20px; margin-top:170px;}
.zuzhang .zjjs span{margin-top:15px; display:block; font-weight:700;}
.zuzhang .zjjs p{margin-top:20px;}

.jianjie{ border:1px solid #e9e9e9; border-radius:10px; padding:20px; margin-bottom:20px;}
.jianjie h4{ border-bottom:1px solid #156caf; margin-bottom:10px; padding-bottom:10px;}
.jianjie p{ line-height:30px; text-indent:2em;}
.jianli p{ text-indent:0;}
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

    <div class="con1detail conlist">
        <div class="list1">
            <p class="list1p1"><%=classname %></p>
             
            <p class="weizhi"><b>您当前的位置：&nbsp;></b><a href="/">首页</a>><a href="/listzj.aspx?class=<%=id %>&fl=<%=fl %>"><%=classname %>行业专家</a></p>
        </div>
       <div class="con1detailbt " style="margin-top: 0">
             
            <div class="conn-con-c">
            	<div class="zuzhang clear">
                	<%=zzinfo %>
                </div>
                <div class="jianjie">
                	<h4>简介</h4>
                    <p><%=zjjj %></p>
                </div>
                <div class="jianjie jianli">
                	<h4>简历</h4>
                    <p><%=zjjl %></p>
                </div>
               <!-- <div class="yema">
                	<a href="#">&lt;&lt;</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">&gt;&gt;</a>
            	</div>-->
            </div>
        </div>
    </div>
    </div>
    <uc1:footer runat="server" id="footer" />
</body>
</html>

