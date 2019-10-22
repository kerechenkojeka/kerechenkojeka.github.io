<!DOCTYPE html>
<html>
<head>
{headers}
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="{THEME}/css/engine.css" rel="stylesheet">
<link href="{THEME}/css/style.css" rel="stylesheet">
<script src="{THEME}/js/libs.js" type="text/javascript"></script>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<!--[if lt IE 9]><script src="{THEME}/js/html5shiv.js" type="text/javascript"></script><![endif]-->
</head>
<body>
	{AJAX}
	<div id="toolbar">
		<div id="in-toolbar">
			{login}
			<a id="menu-btn">
				<span id="hamburger"></span>
			</a>
		</div>
		<!-- Head Menu -->
		<nav id="menu-head">
			<li><a href="/">�������</a></li>
  <li><a href="/serialy/">�������</a></li>
  <li><a href="/multfilmy/">�����������</a></li>
  
		</nav>
		<!-- Head Menu [E] -->
	</div>
	<div class="background"></div>
	<header id="header">
		<!-- LogoType -->
		<a id="logo" href="/">
			<b id="logo-text">������ � ������� HD</b>
			<span>�������� ������</span>
		</a>
		<!-- LogoType [E] -->
		<!--Search-->
		<form id="quicksearch" method="post" action=''>
			<input type="hidden" name="do" value="search">
			<input type="hidden" name="subaction" value="search">
			<div class="quicksearch">
				<input class="f_input" placeholder="�����..." name="story" value="" type="search">
				<button type="submit" title="Search" class="thd">�����</button>
			</div>
		</form>
		<!--Search [E]-->
		<a id="go2full" class="ico" href="/index.php?action=mobiledisable">������ ������ �����</a>
	</header>
	<section id="content">
		{info}
		{content}
	</section>
	<div id="footmenu">
		<h3>���������</h3>
		<nav class="main-nav">
			<li><a href="/dokumentalnye/">��������������</a></li>
				<li><a href="/katastrofa/">����������</a></li>
				<li><a href="/komediya/">�������</a></li>
				<li><a href="/boevik/">�������</a></li>
				<li><a href="/uzhasy/">�����</a></li>
				<li><a href="/fantastika/">����������</a></li>
				<li><a href="/triller/">��������</a></li>
				<li><a href="/fentezi/">�������</a></li>
				<li><a href="/melodrama/">���������</a></li>
				<li><a href="/sovetskoe-kino/">����</a></li>
				<li><a href="/detektiv/">���������</a></li>
				<li><a href="/istoricheskie/">������������</a></li>
				<li><a href="/drama/">�����</a></li>
				<li><a href="/multfilmy/">�����������</a></li>
			<span class="nav-sep"></span>
			<a href="/index.php?do=lastnews" target="_blank">��� ��������� �������</a>
			
			<a href="/index.php?action=mobiledisable">������ ������ �����</a>
		</nav>
	</div>
	<footer id="footer">
		<div class="background"></div>
		<div id="copyright">Powered by <a href="/" target="_blank">����</a> � 2016</div>
	</footer>
	<script type="text/javascript">
	// <![CDATA[
		(function(doc) {

		var addEvent = 'addEventListener',
		type = 'gesturestart',
		qsa = 'querySelectorAll',
		scales = [1, 1],
		meta = qsa in doc ? doc[qsa]('meta[name=viewport]') : [];

		function fix() {
		meta.content = 'width=device-width,minimum-scale=' + scales[0] + ',maximum-scale=' + scales[1];
		doc.removeEventListener(type, fix, true);
		}

		if ((meta = meta[meta.length - 1]) && addEvent in doc) {
		fix();
		scales = [.25, 1.6];
		doc[addEvent](type, fix, true);
		}

		}(document));
	// ]]>
	</script>
</body>
</html>