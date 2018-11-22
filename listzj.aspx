<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listzj.aspx.cs" Inherits="listzj1" %>

<%@ Register Src="~/include/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/include/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<%@ Register Src="~/include/menu.ascx" TagPrefix="uc1" TagName="menu" %>
<%@ Register Src="~/include/left.ascx" TagPrefix="uc1" TagName="left" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<uc1:header runat="server" id="header" />
     <style  type="text/css">
        .con1detailbt ul li{float:left; padding-left:27px; padding-right:27px;}
        .con1detailbt ul li p{font-size:14px;}
        .con1detailbt ul li img{width:151px; }
    </style>
<body>
    <uc1:menu runat="server" ID="menu" />
<!--内容-->
<!--con-->
<div class="con1">
       <uc1:left runat="server" ID="left" />

    <div class="con1detail conlist">
        <div class="list1">
            <p class="list1p1">专家库<%--<%=classname %>--%></p>
             
            <p class="weizhi"><b>您当前的位置：&nbsp;></b><a href="/">首页</a>><a href="/listzj.aspx?class=0&fl=0"><%--<%=classname %>--%>专家库</a></p>
        </div>
       <div class="con1detailbt " style="margin-top: 0">
            <ul class="listulnew listzhuanjia">
                	<%=content %>
              
               <!-- <div class="yema">
                	<a href="#">&lt;&lt;</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">&gt;&gt;</a>
            	</div>-->
            </ul>
        </div>
    </div>
    </div>
    <uc1:footer runat="server" id="footer" />
</body>
</html>