<%@ Control Language="C#" AutoEventWireup="true" CodeFile="footer.ascx.cs" Inherits="include_footer" %>
<div class="footer">
  <div class="warp">
   	<h2 class="link_bt">友情链接</h2>
        <div class="link_box">
            <form name="form1" id="form1"> 
       		<select onchange="window.open(this.value)">
					<option value="">政府机构</option>				
                    <option value="http://www.gov.cn/guowuyuan/">国务院</option>
                    <option value="http://www.sdpc.gov.cn/">发改委</option>
                    <option value="http://www.most.gov.cn/">科技部</option>
				</select>
				<select onchange="window.open(this.value)">
					<option value="">机构组织</option>
					<option value="http://www.miit.gov.cn/">工信部</option>
                    <option value="http://www.miit-kjcg.org/">工信部电子情报所科技成果评价</option>
				</select>
				<select onchange="window.open(this.value)">
					<option value="">合作单位</option>
					<option value="http://smica.fdi.gov.cn/">智能制造产业国际合作委员会</option>
				</select>
				<select onchange="window.open(this.value)">
					<option value="">联盟成员</option>
					<option value="http://www.niita.org/">联盟</option>
				</select> 
				<select onchange="window.open(this.value)">
					<option value="">行业网站</option>
					<option value="http://www.qiangji.org/">工业强基网</option>
				</select>
                </form>
    </div>
  </div>
  <div class="subnav">
  	<div class="warp">
  		<p><a href="/">网站首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
              <a href="list.aspx?class=55&fl=10">联盟简介</a>&nbsp;&nbsp;|&nbsp;&nbsp;
              <a href="reg.aspx" >会员注册</a>&nbsp;&nbsp;|&nbsp;&nbsp;
              <a href="javascript:void(0)" onclick="SetHome(this,'http://www.niita.org/');">设为首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
              <a href="javascript:void(0)" onclick="AddFavorite('全国工业和信息化科技成果转化联盟',location.href)">加入收藏</a>
    </div>
  </div>
  <div class="warp copyright">地址：北京市万寿路27号院&nbsp;&nbsp;&nbsp;100823&nbsp;&nbsp;&nbsp;电话/传真：010-68209332&nbsp;&nbsp;&nbsp;Email：<a href="mailto:chentao@zhongqihilian.com">chentao@zhongqihilian.com </a><br />
    ©版权所有：全国工业和信息化科技成果转化联盟    未经授权请勿转载 <br />
      京ICP备16041171号-1<br />
</div>

</div>


	<script type='text/javascript'>
		//设为首页
        function SetHome(obj,url){
            try{
                obj.style.behavior='url(#default#homepage)';
                obj.setHomePage(url);
            }catch(e){
                if(window.netscape){
                    try{
                        netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
                    }catch(e){
                        alert("抱歉，此操作被浏览器拒绝！\n\n请在浏览器地址栏输入“about:config”并回车然后将[signed.applets.codebase_principal_support]设置为'true'");
                    }
                }else{
                    alert("抱歉，您所使用的浏览器无法完成此操作。\n\n您需要手动将【"+url+"】设置为首页。");
                }
            }
        }
        //收藏本站
        function AddFavorite(title, url) {
            try {
                window.external.addFavorite(url, title);
            }
            catch (e) {
                try {
                    window.sidebar.addPanel(title, url, "");
                }
                catch (e) {
                    alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
                }
            }
        }
	</script>
 <script type="text/javascript">
    $('.more a').mouseover(function(){
        $(this).children('img').attr('src','images/more_aft.png');
    }).mouseout(function(){
        $(this).children('img').attr('src','images/more_bef.png');
    });
</script>
