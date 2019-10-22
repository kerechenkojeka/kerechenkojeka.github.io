<!DOCTYPE html>
<html lang="ru">
<head>
{headers}
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
<link rel="stylesheet" href="{THEME}/css/styles.css">
<link rel="stylesheet" href="{THEME}/css/engine.css">
<link rel="shortcut icon" type="image/vnd.microsoft.icon" href="{THEME}/images/favicon.ico">
</head>
<body>

<div class="page-wrapper">
<!--noindex--><button type="button" class="scroll-top" title="Подняться наверх"><span>Наверх</span></button><!--/noindex-->
<header class="header">
	<nav class="header__nav">
		<ul class="header__menu">
			<li><a href="/">Главная страница</a></li>
			<li><a href="#">Игры для PC</a></li>
			<li><a href="#">Фильмы</a></li>
			<li><a href="#">Музыка</a></li>
			<li><a href="#">Форум</a></li>
			<li><a href="#">Задать вопрос</a></li>
			<li><a href="/index.php?do=feedback">Обратная связь</a></li>
			<li><a href="#">Правила</a></li>
			<li><a href="#">Правообладателям</a></li>
		</ul>
	</nav>
	<div class="header__bar-wrapper">
		<div class="header-bar clearfix">
			<div class="header-bar__logo-container">
				<button type="button" class="header-bar__menu-button ic_menu-white"></button>
				<a href="/" class="header-bar__logo" title="название сайта"></a>
			</div>
			<div class="header-bar__links">
				[group=5]
				<!--noindex-->
				<a href="#" class="header-bar__link header-bar__link_login popup-open popup-open_login ic_login-white" rel="nofollow"><span>Вход</span></a>
				<a href="/index.php?do=register" class="header-bar__link header-bar__link_reg ic_reg-white" rel="nofollow"><span>Регистрация</span></a>
				<!--/noindex-->
				[/group]
				[not-group=5]{login}[/not-group]
			</div>
			<div class="header-bar__search">
				<form method="post" action="">
					<input type="hidden" name="do" value="search"><input type="hidden" name="subaction" value="search">
					<button type="submit" class="header-bar__search-submit" alt="Найти" title="Найти"></button>
					<input type="text" id="story" name="story" maxlength="40" class="header-bar__search-input" placeholder="Поиск по сайту...">
				</form>
			</div>
		</div>
	</div>
</header>
<main>
	<!-- data-cookie используется для запоминания последней выбранной вкладки -->
	<div class="recommend tabs" data-cookie="main">
		<div class="recommend__title h3">Рекомендуем:</div>
		<div class="tabs-switch">
			<button type="button" class="tab-switch active">Популярные</button>
			<button type="button" class="tab-switch">Сериалы</button>
		</div>
		<div class="tab-content recommend__items visible">
			{custom category="1-20" template="custom-top" aviable="global" from="0" limit="16" cache="no"}
		</div>
		<div class="tab-content recommend__items">
		    {custom category="1-20" template="custom-top2" aviable="global" from="0" limit="16" cache="no"}
		</div>
	</div>
	<div class="main clearfix">
		<section class="main__content">
			[not-aviable=main]{speedbar}[/not-aviable]
			[aviable=main]
			<div class="main__h1-wrapper">
				<a href="/top24.html" class="main__top-torrents">Лучшие торренты <span>за 24 часа</span></a>
				<div class="main__content-title">Торренты скачать</div>
			</div>
			[/aviable]
			{info}{content}
			{include file="modules/seo-bottom.tpl"}
		</section>
		{include file="modules/sidebar-left.tpl"}
		{include file="modules/sidebar-right.tpl"}
	</div>
</main>
<footer class="footer">
	<div class="footer__first-line">
		<div class="footer__left">
			<div class="footer__copy">
				Ваш сайт &copy; 2018-2019
			</div>
			<div class="footer__rights">
				Все права защищены. 
				<a href="/rss.xml" class="footer__rss" rel="nofollow"></a>
				<a href="/sitemap.xml" class="footer__sitemap" title="Карта сайта"></a>
			</div>
		</div>
		<div class="footer__center clearfix">
			<ul class="footer__menu">
				<li><a href="/index.php?do=feedback" rel="nofollow" >Обратная связь</a></li>
				<li><a href="#" rel="nofollow">Правообладателям</a></li>
				<li><a href="#" rel="nofollow">Реклама</a></li>
			</ul>
		</div>
		<div class="footer__right">
			<img src="{THEME}/images/count.png">
		</div>
	</div>
	<div class="footer__second-line">
		<p>Брюс Уэйн, вдохновлённый самопожертвованием Супермена, вновь обретает веру в человечество. Он заручается поддержкой новой союзницы, Дианы Принс, чтобы сразиться с еще более могущественным противником.</p>
	</div>
</footer>

<!-- Перекрывающий блок для меню мобильной версии (затемнение контента) -->
<div class="nav-overlay"></div>

[group=5]{login}[/group]

<!-- Viewport fix -->
<script>
 if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
 var msViewportStyle = document.createElement('style');
 msViewportStyle.appendChild( document.createTextNode( '@-ms-viewport{width:auto!important}' ) );
 document.querySelector('head').appendChild(msViewportStyle);
 }
</script>

<!-- Переменные, используемые в скриптах -->
<script>
 if (!window.engine) { window.engine = {}; }
</script>

<!-- Основные скрипты сайта -->
<script type="text/javascript" defer="defer" src="{THEME}/js/scripts.js?v1.1.136"></script>

<script type="text/javascript" src="{THEME}/js/owl.carousel.min.js"></script>
<script type="text/javascript" src="{THEME}/js/jquery.scripts.js?v=1.1.14"></script>

{AJAX}

</div>
</body>
</html>