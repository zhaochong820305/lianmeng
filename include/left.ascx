<%@ Control Language="C#" AutoEventWireup="true" CodeFile="left.ascx.cs" Inherits="include_left" %>
   <div class=" fr maln_r_box">
        	<div class="fl sid_t1">
            	<div class="fl icon1"></div>
                <p>全国工业和信息化科技成果转化联盟</p>
            </div>
            <div class="fl sid">
            	<ul>
                	<li><a href="list.aspx?class=55&fl=10">联盟简介</a></li>
                	<li><a href="list.aspx?class=56&fl=10">联盟组织机构</a></li>
                	<li><a href="list.aspx?class=57&fl=10">联盟章程</a></li>
                	<li><a href="reg.aspx">申请加入</a></li>
                	<li><a href="list.aspx?class=58&fl=10">联盟大事记</a></li>
                	<li><a href="list.aspx?class=59&fl=10">理事长寄语</a></li>
                </ul>
            </div>
        <div class="fl sid_t2">
        	<div class="fl icon2"></div>
        	<p>联盟智能平台</p>
        </div>
            <div class="fl sid">
            	<ul>
                	<li><a href="list.aspx?class=84&fl=12">联盟秘书处</a></li>
                	<li><a href="list.aspx?class=77&fl=13">制造业创新中心</a></li>
                	<li><a href="list.aspx?class=79&fl=13">科技成果转化基地</a></li>
                	<li><a href="list.aspx?class=75&fl=13">科技成果评价中心</a></li>
                	<%--<li><a href="list.aspx?class=76&fl=13">政策研究中心</a></li>
                	<li><a href="list.aspx?class=78&fl=13">创新服务中心</a></li>
                	
                	<li><a href="list.aspx?class=72&fl=12">联盟会员中心</a></li>
                	<li><a href="list.aspx?class=73&fl=12">联盟分中心</a></li>--%>
                </ul>
            </div>
            <div class="fl sid_t2">
        	<div class="fl iconzs"></div>
        	<p>联盟合作活动-展会</p>
        </div>
      
            <div id="zhans" class="zhansclass">
　　　　        <ul id="sp">
　　　　　　       <li> 
                       <a href="http://www.niita.cn/shownews.aspx?id=12485" target="_blank"><img src="images/mianyang.png" width="120px" height="60px;" alt="中国(绵阳)科技城国际科技博览会-第六届科博会9月举行"  style="border:1px solid #ccc;"></a>
                       <a href="http://www.niita.cn/500qiang/qiyefazhan.aspx"  target="_blank"><img src="images/500qiang2.png" width="120px" height="60px;" alt="2018年中国500强企业高峰论坛陕西举办"></a>
                       <a href="http://www.niita.cn/gongbohui/index.aspx"   target="_blank"><img src="images/gongbo1.png" width="120px" height="60px;" alt="2018年上海工博会第二十届中国工业博览会" style="border:1px solid #ccc;"></a>
                       
                    </li>
　　　　　　      <%--  
                    <li>
                        <a href="list.aspx?class=84&fl=12"><img src="images/logo.png" width="120px" height="60px;"></a>
                        <a href="list.aspx?class=84&fl=12"><img src="images/logo.png" width="120px" height="60px;"></a>
                        <a href="list.aspx?class=84&fl=12"><img src="images/logo.png" width="120px" height="60px;"></a>
                        <a href="list.aspx?class=84&fl=12"><img src="images/logo.png" width="120px" height="60px;"></a>
                    </li>　--%>　
                    <%--<%=loadimg(12,50,20) %>--%>
　　　　        </ul>
　　        </div>

　　        <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>

　　        <script type="text/javascript">

　　　　        $(document).ready(function() {

                setInterval('autoScroll("#zhans")', 10000);
　　　　        });

　　　　        function autoScroll(obj) {
　　　　　　        $(obj).find("#sp:first").animate({
　　　　　　　　        marginTop: "-180px"
　　　　　　        }, 500, function() {
　　　　　　　　        $(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
　　　　　　        });
　　　　        }

　　        </script>
      </div> 