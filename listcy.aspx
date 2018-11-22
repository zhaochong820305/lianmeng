<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listcy.aspx.cs" Inherits="listcy" %>
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
				<p class="list1p1">公司简介</p>
				<p class="weizhi"><b>当前位置：</b><a href="/">首页</a>><a href="/listcy.aspx?class=<%=id %>&fl=<%=fl %>">公司简介</a></p>
			</div>
    <%=content %>

    </div>
        <uc1:left runat="server" ID="left" />
</div>
    <uc1:footer runat="server" id="footer" />
</body>
</html>
