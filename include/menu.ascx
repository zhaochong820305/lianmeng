<%@ Control Language="C#" AutoEventWireup="true" CodeFile="menu.ascx.cs" Inherits="include_menu" %>

<div class="nav_bj">
	<div class="nav_box">
    	<div class="fl logo_box">
			<h1 class="logo"><a href="/"  >logo</a></h1>
        </div>
      <div class="fr nav">
          <ul>
                <li><a href="index.aspx"><p>首页</p><p class="p2">HOME</p></a></li>
                <li><a href="list.aspx?class=55&fl=10"><p>关于联盟</p><p class="p2">ABOUT US</p></a></li>
                <li  id="SERVICE"><a href="list.aspx?class=75&fl=13"><p>联盟服务</p><p class="p2">SERVICE</p></a>
                    <div class="SERVICE_box" id="SERVICE_box">
                        <ul>
                            <li><a href="500qiang/qiyefazhan.aspx" target="_blank">2018年500强企业论坛</a></li>
                            <li><a href="gongbohui/qiangji.aspx" target="_blank">2018工业博览会强基展</a></li>
                            <li><a href="daguogongye.aspx" target="_blank">大国工业梦新书发布</a></li>
                            <li><a href="xinxiluntan.aspx" target="_blank">500强信息安全论坛</a></li>
                            <li><a href="baoming/index.aspx" target="_blank">500强企业论坛报名</a></li>
                            <li><a href="cunchuqi/index.aspx" target="_blank">存储器一条龙申报</a></li>
                            <li><a href="gongbohui/index.aspx" target="_blank">工博会强基成果展</a></li>
                            <li><a href="mianyang/qiangji.aspx" target="_blank">绵阳强基成果展</a></li>
                            <li><a href="nanchang/qiangji.aspx" target="_blank">南昌500强高峰论坛</a></li>
                            <li><a href="zhuanti/qiangji.aspx" target="_blank">工业强基成果展</a></li>
                        </ul>
                    </div>
                </li>

                <li><a href="list.aspx?class=75&fl=13"><p>科技成果</p><p class="p2">TECHS</p></a></li>
                <li><a href="listzj.aspx?class=0&fl=0"><p>知名专家</p><p class="p2">EXPERTS</p></a></li>
                <li><a href="listcymain.aspx?class=83&fl=15"><p>会员信息</p><p class="p2">MEMBERS</p></a></li>
                <li><a href="list.aspx?class=85&fl=15"><p>产业政策</p><p class="p2"><%--RESOURCES policy--%>POLICY</p></a></li>
                <li><a href="reg.aspx"><p>申请发布</p><p class="p2">JOIN US</p></a></li>
            </ul>
      </div>
    </div>
</div>