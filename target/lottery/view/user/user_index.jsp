<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>绠�崟瀹炵敤鍥戒骇jQuery UI妗嗘灦 - DWZ瀵屽鎴风妗嗘灦(J-UI.com)</title>

<link href="/lottery/res/dwz-ria/themes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="/lottery/res/dwz-ria/themes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="/lottery/res/dwz-ria/themes/css/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="/lottery/res/dwz-ria/uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>

<script src="/lottery/res/dwz-ria/js/jquery-1.7.2.js" type="text/javascript"></script>
<script src="/lottery/res/dwz-ria/js/jquery.cookie.js" type="text/javascript"></script>
<script src="/lottery/res/dwz-ria/js/jquery.validate.js" type="text/javascript"></script>
<script src="/lottery/res/dwz-ria/js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="/lottery/res/dwz-ria/xheditor/xheditor-1.2.1.min.js" type="text/javascript"></script>
<script src="/lottery/res/dwz-ria/xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="/lottery/res/dwz-ria/uploadify/scripts/jquery.uploadify.js" type="text/javascript"></script>

<!-- svg鍥捐〃  supports Firefox 3.0+, Safari 3.0+, Chrome 5.0+, Opera 9.5+ and Internet Explorer 6.0+ -->
<script type="text/javascript" src="/lottery/res/dwz-ria/chart/raphael.js"></script>
<script type="text/javascript" src="/lottery/res/dwz-ria/chart/g.raphael.js"></script>
<script type="text/javascript" src="/lottery/res/dwz-ria/chart/g.bar.js"></script>
<script type="text/javascript" src="/lottery/res/dwz-ria/chart/g.line.js"></script>
<script type="text/javascript" src="/lottery/res/dwz-ria/chart/g.pie.js"></script>
<script type="text/javascript" src="/lottery/res/dwz-ria/chart/g.dot.js"></script>

<script src="/lottery/res/jquery/jquery-1.8.0.js" type="text/javascript"></script>
<script src="/lottery/res/jquery/jquery-1.8.0.min.js" type="text/javascript"></script>

<script src="/lottery/res/dwz-ria/bin/dwz.min.js" type="text/javascript"></script>

<script src="/lottery/res/dwz-ria/js/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
$(function(){
	DWZ.init("/lottery/res/dwz-ria/dwz.frag.xml", {
		debug:false,	// 璋冭瘯妯″紡 銆恡rue|false銆�
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"/lottery/res/dwz-ria/themes"}); // themeBase 鐩稿浜巌ndex椤甸潰鐨勪富棰榖ase璺緞
		}
	});
});

</script>
</head>

<body scroll="no">
	<div id="layout">
		<div id="header">
			<div class="headerNav">
				<a class="logo" href="http://j-ui.com">鏍囧織</a>
				<ul class="nav">
					<li><a>浣犲ソ鐢ㄦ埛锛�{sessionScope.userId}</a></li>
					<li><a href="/lottery/loginOut.do">閫�嚭</a></li>
				</ul>
				<ul class="themeList" id="themeList">
					<li theme="default"><div class="selected">钃濊壊</div></li>
					<li theme="green"><div>缁胯壊</div></li>
					<!--<li theme="red"><div>绾㈣壊</div></li>-->
					<li theme="purple"><div>绱壊</div></li>
					<li theme="silver"><div>閾惰壊</div></li>
					<li theme="azure"><div>澶╄摑</div></li>
				</ul>
			</div>

			<!-- navMenu -->
			
		</div>

		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse"><div></div></div>
				</div>
			</div>
			<div id="sidebar">
				<div class="toggleCollapse"><h2>涓昏彍鍗�/h2><div>鏀剁缉</div></div>

				<div class="accordion" fillSpace="sidebar">
					<div class="accordionHeader">
						<h2><span>Folder</span>鐣岄潰缁勪欢</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a href="#" target="navTab">涓荤晫闈�/a>
								<ul>
									<li><a href="/lottery/view/user/jionActivity.jsp" target="navTab" rel="joinActivity">鏌ョ湅娲诲姩</a></li>
									<li><a href="/lottery/view/user/lotteryInfo.jsp" target="navTab" rel="lotteryInfo">鏌ョ湅鎶藉鎯呭喌</a></li>
								</ul>
							</li>
							
									
						</ul>
					</div>
		
				</div>
			</div>
		</div>
		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent"><!-- 鏄剧ず宸﹀彸鎺у埗鏃舵坊鍔�class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:;"><span><span class="home_icon">鎴戠殑涓婚〉</span></span></a></li>
						</ul>
					</div>
					<div class="tabsLeft">left</div><!-- 绂佺敤鍙渶瑕佹坊鍔犱竴涓牱寮�class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div><!-- 绂佺敤鍙渶瑕佹坊鍔犱竴涓牱寮�class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:;">鎴戠殑涓婚〉</a></li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						<div class="accountInfo">
						</div>
						<div class="pageFormContent" layoutH="80" style="margin-right:230px">
							
						<div class="divider"></div>

						<div class="divider"></div>
						<div class="unit"></div>
						<div class="unit"></div>
						<div class="unit"></div>
						<div class="unit"></div>
						<div class="unit"></div>

						<div class="divider"></div>


						<div class="divider"></div>

						</div>
						
						<div style="width:230px;position: absolute;top:60px;right:0" layoutH="80">
							<iframe width="100%" height="430" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?width=0&height=430&fansRow=2&ptype=1&skin=1&isTitle=0&noborder=1&isWeibo=1&isFans=0&uid=1739071261&verifier=c683dfe7"></iframe>
						</div>
					</div>
					
				</div>
			</div>
		</div>

	</div>

	<div id="footer">Copyright &copy; 2010 <a href="demo_page2.html" target="dialog">DWZ鍥㈤槦</a> 浜琁CP澶�5019125鍙�10</div>
</body>
</html>