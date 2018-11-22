<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="header" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>全国工业和信息化科技成果转化联盟</title>
<link rel="stylesheet" href="css/base.css" />
<link rel="stylesheet" href="css/style.css?v=2018" />
<link rel="stylesheet" href="css/lrtk.css?v=1" />
<link rel="stylesheet" href="css/css.css?v=18" />
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
</head>