<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
{headers}
<link rel="shortcut icon" href="{THEME}/images/favicon.ico" />
<link media="screen" href="{THEME}/css/styles.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/css/reset.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/css/slider.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/css/engine.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/css/jquery-ui-1.8.7.custom.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="{THEME}/js/libs.js"></script>
<script type="text/javascript" src="{THEME}/js/jquery.cookie.js"></script>
<script type="text/javascript" src="{THEME}/js/tabs.js"></script>
<script type="text/javascript" src="{THEME}/js/tabsfull.js"></script>
<script type="text/javascript" src="{THEME}/js/owl.carousel.js"></script>
<script type="text/javascript" src="{THEME}/js/jquery.carouFredSel-5.6.4-packed.js"></script>
<script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({
        navigation : true
      });
    });

$(function(){
 $(".butall").click(function(){
  $(".rus").show();
  $(".eng").show();
 });
 $(".butrus").click(function(){
  $(".rus").show();
  $(".eng").hide();
 });
 $(".buteng").click(function(){
  $(".rus").hide();
  $(".eng").show();
 });
})

</script>
</head>
<body>
{AJAX}
	<div id="header">
		<div class="width">
			<div class="logo-top">
				<a href="/" title="Смотреть фильмы и сериалы онлайн в HD качестве бесплатно">
                    <img src="{THEME}/images/logo.png" alt="Смореть фильмы онлайн в HD качестве бесплатно" />
				</a>
			</div>
			<div class="fav-s">
                <a rel="sidebar" class="favorite-site" rel="nofollow" href="/" onclick="window.external.AddFavorite ('/', "yes");" title="Смореть фильмы онлайн в HD качестве бесплатно"></a>
                
			</div>
			<div class="search-select">
				<form class="tophead-search" action="" name="searchform" method="post">
                    <fieldset>
                        <span class="text">
                            <input class="reset sinput tophead-search-txt" type="text" name="story" id="header-search-input" value="Поиск..." onblur="if(this.value=='') this.value='Поиск...';" onfocus="if(this.value=='Поиск...') this.value='';">
                        </span>
                        <input title="Найти" class="go" type="submit" value="">
                        <input type="hidden" name="do" value="search">
                        <input type="hidden" name="subaction" value="search">
                    </fieldset>
                </form>
                <div class="clear"></div>
				<div class="primer">
					Например: <span onclick="document.getElementById('header-search-input').value='Дэдпул';  return false;">Дэдпул</span>
				</div>
			</div>
			<!--noindex--><div class="f-login">
{login}
</div>

<!--/noindex-->
		</div>
	</div>

    <div class="bg-site">
    <div class="bg-wrapper">

	<div id="top-menu">
		<div class="width">
			<ul class="li-t-menu">
				<li><a href="/">Главная</a></li>
				<li><a href="/xfsearch/year/2016/">Новинки 2016</a></li>
                <li><a href="/xfsearch/year/2015/">Новинки 2015</a></li>
				<li><a href="/xfsearch/year/2014/">Новинки 2014</a></li>
                <li><a href="/serialy/">Сериалы</a></li>
				<li><a href="/multfilmy/">Мультфильмы</a></li>
				<li><a href="/rules.html">Правила сайта</a></li>
			</ul>
		</div>
	</div>

	<div id="wrapper">
[aviable=main]
		<div class="top-slider">
			<div class="tab-menu">
				<ul class="a-link">
					<li class="act-yelow"><a href="javascript:SwitchTab2('tab_1', 'cont_1');" id="tab_1" class="active" href="#">Топ-фильмов</a></li>
					<li><a href="javascript:SwitchTab2('tab_2', 'cont_2');" id="tab_2" class="no-active">Топ-сериалов</a></li>
					<li><a href="javascript:SwitchTab2('tab_3', 'cont_3');" id="tab_3" class="no-active">Мультфильмы</a></li>
				</ul>
				
				<div class="btn-left-right">
				</div>
			</div>
			<div class="clear"></div>
            <div id="cont_1"> 
               <div id="owl-demo" class="six-films owl-carousel owl-theme">
				{custom category="1-12,15-20" template="shortstory-2" aviable="global" from="0" limit="12" order="reads" cache="no"}
				<!-- Выводит популярные фильмы по количеству просмотров-->
                </div>
            </div>
            <div id="cont_2" style="display:none;">
                <div class="six-films">
                {custom category="14" template="shortstory-2" aviable="global" from="0" limit="12" order="reads" cache="no"}
				<!-- Выводит популярные сериалы по количеству просмотров-->
                    <div class="clear"></div>
                </div>
            </div>
            <div id="cont_3" style="display:none;">
                <div class="six-films">
                {custom category="13" template="shortstory-2" aviable="global" from="0" limit="12" order="reads" cache="no"}
				<!-- Выводит последние новости из категории "скоро на экране"-->
                    <div class="clear"></div>
                </div>
            </div>
		</div><!--top-slider-->
[/aviable]
		<div class="main">
			<div class="left-block">
				<div class="block-cat">
					<div class="title-block-cat">
						<span>
							Фильмы
						</span>
					</div>
					
					<ul class="category">
						<li><a href="/dokumentalnye/">Документальные</a></li>
				<li><a href="/katastrofa/">Катастрофы</a></li>
				<li><a href="/komediya/">Комедии</a></li>
				<li><a href="/boevik/">Боевики</a></li>
				<li><a href="/uzhasy/">Ужасы</a></li>
				<li><a href="/fantastika/">Фантастика</a></li>
				<li><a href="/triller/">Триллеры</a></li>
				<li><a href="/fentezi/">Фэнтези</a></li>
				<li><a href="/melodrama/">Мелодрамы</a></li>
				<li><a href="/sovetskoe-kino/">СССР</a></li>
				<li><a href="/detektiv/">Детективы</a></li>
				<li><a href="/istoricheskie/">Исторические</a></li>
				<li><a href="/drama/">Драмы</a></li>
				<li><a href="/multfilmy/">Мультфильмы</a></li>
                        
                        <div class="clear"></div>
					</ul>
				</div><!--block-zhanr-->
                <br/>
				<div class="block-cat">
					<div class="title-block-cat">
						<span>
							Сериалы
						</span>
					</div>
					
					<ul class="category">
<li><a href="/tags/Боевик/">Боевик</a></li>
				<li><a href="/tags/Детектив/">Детектив</a></li>
				<li><a href="/tags/Документальный/">Документальный</a></li>
				<li><a href="/tags/Драма/">Драма</a></li>
				<li><a href="/tags/Исторический/">Исторический</a></li>
				<li><a href="/tags/Комедия/">Комедия</a></li>
				<li><a href="/tags/Мелодрама/">Мелодрама</a></li>
				<li><a href="/tags/Триллер/">Триллер</a></li>
				<li><a href="/tags/Ужасы/">Ужасы</a></li>
				<li><a href="/tags/Фантастика/">Фантастика</a></li>
				<li><a href="/tags/Фэнтези/">Фэнтези</a></li>
                        
                        <div class="clear"></div>
					</ul>
				</div><!--block-zhanr-->
                
                <div class="clear"></div>
				
				<div class="top-random">
					<div class="title-top-random">
						<span>Популярное на сайте</span>
					</div>
					<div class="random-f">
					{topnews}
					<div class="clear"></div>
					</div><!--random f-->

				</div><!--top-random-->

				</div>
            
			</div><!--left block-->

			<!-------------------->

			<div class="content">
[aviable=main]
            <div class="color-hr"></div>
			
				<div class="top-txt">
                <h1>Добро пожаловать на сайт </h1>
<div>
 На нашем сайте ты сможешь смотреть онлайн самые лучшие фильмы и сериалы совершенно бесплатно, без смс и платной регистрации.  Наш кинопортал обладает большой базой фильмов российского и зарубежного производства. Также, у нас собрана большая коллекция отечественных и зарубежных мультфильмов в Hd качестве.  Наш сайт обновляется и наполняется свежими видео каждый день! 7 дней в неделю, 24 часа в сутки!
Еще одним плюсом является то, что мы собрали для вас ваши любимые сериалы, которые вы также можете смотреть онлайн на.
<br/>Продуманное меню, позволит вам без труда и с комфортом найти интересующий вас фильм или сериал за считанные секунды! А, если по нашей причине, вы не смогли обнаружить какой либо фильм на нашем кинопортале, вы можете оставить его в <a href="/index.php?do=orderdesc">столе заказов</a> фильмов. Будьте уверены, ваш заказ будет выполнен в кратчайшие сроки, а то в ближайшие минуты!   
</div>
				</div>
                <!--top-txt-->
            
					<div class="clear"></div>

<div class="date-serials">
  <span>Новые фильмы</span>
</div>
{custom category="1-12,15-29" template="shortstory" aviable="global" from="0" limit="12" order="date" cache="no"}
<!-- Указать ID категорий которые относятся к категориям с фильмами -->
<div style="clear:both; float:none;"></div>

<div class="date-serials">
  <span>Сериалы</span>
</div>
{custom category="14" template="shortstory" aviable="global" from="0" limit="12" order="date" cache="no"}
<!-- Указать ID категорий которые относятся к категориям с сериалами -->
<div style="clear:both; float:none;"></div>

<div class="date-serials">
  <span>Мультфильмы</span>
</div>
{custom category="13" template="shortstory" aviable="global" from="0" limit="12" order="date" cache="no"}
<!-- Указать ID категорий которые относятся к категориям с мультфильмами -->
<div style="clear:both; float:none;"></div>
[/aviable]
[aviable=showfull]
<div class="clear"></div>
{speedbar}
<div class="clear"></div>
[/aviable]
[not-aviable=main]
{info}
{content}
[/not-aviable]
               <!--content-->
		</div><!--main--> 
		
	</div>
	
	<div class="clear"></div>
<!--noindex-->	
	<div id="top-menu2">
		<div class="width">
			<ul class="li-t-menu">
				<li><a href="/">Главная</a></li>
				<li><a href="/xfsearch/year/2016/">Новинки 2016</a></li>
                <li><a href="/xfsearch/year/2015/">Новинки 2015</a></li>
				<li><a href="/xfsearch/year/2014/">Новинки 2014</a></li>
                <li><a href="/serialy/">Сериалы</a></li>
				<li><a href="/multfilmy/">Мультфильмы</a></li>
				<li><a href="/rules.html">Правила сайта</a></li>
				<li><a href="/index.php?do=feedback">Контакты</a></li>
			</ul>
		</div>
	</div>
<!--/noindex-->
<!--noindex-->	[aviable=cat|main]{include file="engine/modules/catface.php"}[/aviable]
	<div id="footer">
	
		<div class="logo-f">
			<img src="{THEME}/images/logo-footer.png" alt="Смотреть фильмы в HD качестве онлайн" />
		</div>
		<div class="copyright">
			Copyright © 2016, <a href="/">Фильмы онлайн</a>  Все права защищены.
			<br/>
			Копирование информации размещенной на сайте, без письменного разрешения администрации строго запрещено
<br/>
<b class="warn" style="color:red;">Внимание. Вся информация на сайте взята с открытых источников. Администрация ответственности не несет.</b>
		</div>
<!--/noindex-->
		<div class="couter">
		<img src="{THEME}/images/count.png" alt="Смотреть фильмы в HD качестве онлайн" />
		</div>
		
		<div class="clear"></div>
	</div>
    </div><!--bg wrapper-->
    </div><!--bg site-->
    <script>
 $(document).ready(function(){
$(".title-block-cat" ).css( "padding-left", "4px" );
});
    </script>
</body>
</html>