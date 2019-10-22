<!DOCTYPE html>
<html lang="ru">
<head>
{headers}      
<meta charset="utf-8">
<title>Фильмы онлайн, смотреть кино бесплатно в HD</title>
<meta name="description" content="Кинофейс.нет - здесь вы можете смотреть фильмы онлайн в HD бесплатно! Самая большая библиотека фильмов, сериалов и мультфильмов в хорошем качестве и без регистрации.">
<meta name="keywords" content="смотреть фильмы онлайн, кино онлайн, смотреть фильм, фильмы онлайн бесплатно, посмотреть фильмы, кино в хорошем качестве">
<meta name="generator" content="https://films-hd.ru/">
<link rel="search" type="application/opensearchdescription+xml" href="/index.php?do=opensearch" title="Фильмы онлайн, смотреть кино бесплатно в HD">
<link rel="canonical" href="https://films-hd.ru/">
	 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
     <link rel="shortcut icon" href="{THEME}/images/favicon.png" />
	 <link href="{THEME}/style/styles.css" type="text/css" rel="stylesheet" />
	 <link href="{THEME}/style/engine.css" type="text/css" rel="stylesheet" />
     <link href="{THEME}/style/stylesv.css" type="text/css" rel="stylesheet" />
	<link href="{THEME}/style/filter-xf.css" type="text/css" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Play:400,700&amp;subset=cyrillic" rel="stylesheet"> 	 
    <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <script src="{THEME}/js/main.js?v5"></script>
</head>
<body>
{AJAX}  
<header class="header wrap-center">
		<div class="header-in clearfix">
			<div class="btn-menu"><span class="fa fa-bars"></span></div>
			<!--noindex-->

       
   <div class="login not-logged">
			[group=5]<div class="btn-login button js-login">Авторизация</div>[/group] 
			[group=5]<a href="/?do=register" rel="nofollow">Регистрация</a>[/group]   
    </div>
	<ul class="login logged">            
   {login}
</ul>

<!--/noindex-->
			<a href="/" class="logo" title="На главную"><img src="{THEME}/images/logo.png" alt="" /></a>
			<div class="btn-menu2"><span class="fa fa-ellipsis-v"></span></div>
			<div class="search-wrap">
				<form id="quicksearch" method="post">
					<input type="hidden" name="do" value="search" />
					<input type="hidden" name="subaction" value="search" />
					<div class="search-box">
						<input id="story" name="story" placeholder="Поиск фильмов..." type="text" />
						<button type="submit" title="Найти">Найти</button>
					</div>
				</form>
			</div>
		</div>
	</header>
	<!-- END HEADER -->
	
<div class="main-block wrap-center"> 
   
		[not-aviable=showfull]
		<div class="carou">
			<div class="carou-in owl-carousel" id="owl-carou">
{custom category="1" template="slider" aviable="global" from="0" limit="20" cache="no"}                
			</div>
		</div>
		<!-- END CAROU -->
		[/not-aviable]
	
	
		<!-- END CAROU-MENU -->
		
		<div class="carou-menu clearfix to-mob">
		<a href="/" class="carou-menu-item">Главная</a>
			<a href="/novinki/" class="carou-menu-item is-active">Новинки</a>
			<a href="/filmy/" class="carou-menu-item">Фильмы</a>
			<a href="/serialy/" class="carou-menu-item">Сериалы</a>
			<a href="/multfilmy/" class="carou-menu-item">Мультфильмы</a>
			<a href="/dokumentalnyy/" class="carou-menu-item">Документальные</a>
            <a href="/index.php?do=orderdesc" class="carou-menu-item is-active">Стол заказов</a> 
            <div class="share-box">
			<div class="ya-share2" data-services="vkontakte,facebook,odnoklassniki,moimir,twitter" data-counter=""></div>
			</div>
		</div>	
    
    	
<div class="cols fx-row">	
<main class="main fx-1  grid-thumb"  id="grid">		
  [available=main|cat|favorites|catalog]	
<div class="shorts-header fx-row fx-middle">
<div class="grid-select clearfix" id="grid-select" data-name="Переключить вид">
 <div data-type="grid-list"><span class="fa fa-reorder"></span></div>
  <div data-type="grid-thumb" class="current"><span class="fa fa-th"></span></div>
</div>
<div class="shorts-title"><span>Новые фильмы</span> онлайн</div>
<div class="shorts-ctrl">
<div class="quan-select">	
</div>
[sort]
<div class="sorter icon-r" data-label="Сортировка по">
{sort}
 </div>
[/sort]  

 </div>
</div>            
[/available] 
<div class="shorts clearfix">
</div>  
  <section class="container">
[not-aviable=main|cat|search|favorites|lastnews|search]   
<span id="dle-speedbar">{speedbar}</span>     
[/not-aviable]   
<div id='dle-content'>    
{info}{content}
</div>

<!--- <div class="side-box viewed-box">
	<div class="side-bt">Вы смотрели</div>
			<div class="side-bc c clearfix">
{custom category="1" template="vy_smotreli" aviable="global" from="0" limit="6" cache="no" order="rand"}
</div> 
</div> --->
</main>
		
				<!-- END MAIN -->
				
            
				 <aside class="side">
		  <!--	[not-aviable=showfull]			
	        <div class="side-box filter-wrap" id="filter-wrap">
			<div class="side-bt">Найти по фильтру</div>
				<div class="filter-box">
                    <form style="v1isibility: hidden;" id='megasearchform' method="post" action='//films-hd.ru/?do=asearch'>
                        
                    <input type="hidden" id='pagefield' name='page' value='0' />
					<div class="fb-sect flex-row flex-2">
						<select id='genresel' multiple  name="genre[]" data-placeholder="Жанр">
							<option></option>
							<option value='6'>Аниме</option><option value='7'>Биография</option><option value='8'>Боевики</option><option value='9'>Вестерн</option><option value='10'>Военный</option><option value='11'>Детектив</option><option value='12'>Детский</option><option value='13'>Документальный</option><option value='14'>Драма</option><option value='44'>История</option><option value='15'>Комедия</option><option value='16'>Криминал</option><option value='17'>Мелодрама</option><option value='19'>Мюзиклы</option><option value='21'>Приключения</option><option value='22'>Семейный</option><option value='23'>Спорт</option><option value='24'>Триллер</option><option value='25'>Ужасы</option><option value='26'>Фантастика</option><option value='27'>Фэнтези</option>							
						</select>
						<select multiple name="country[]" data-placeholder="Страна">
							<option></option>
							<option value='rus'>Россия</option><option value='usa'>США</option><option value='brit'>Великобритания</option><option value='fre'>Франция</option><option value='ger'>Германия</option><option value='kor'>Корея</option><option value='chin'>Китай</option><option value='ind'>Индия</option><option value='17'>Австралия</option><option value='45'>Австрия</option><option value='55'>Албания</option><option value='76'>Алжир</option><option value='59'>Андорра</option><option value='36'>Аргентина</option><option value='82'>Армения</option><option value='96'>Афганистан</option><option value='58'>Багамы</option><option value='74'>Беларусь</option><option value='2'>Бельгия</option><option value='16'>Бермуды</option><option value='27'>Болгария</option><option value='49'>Боливия</option><option value='8'>Босния-Герцеговина</option><option value='44'>Бразилия</option><option value='79'>Вануату</option><option value='35'>Венгрия</option><option value='57'>Венесуэла</option><option value='72'>Вьетнам</option><option value='21'>Гана</option><option value='53'>Гватемала</option><option value='1'>Гонконг</option><option value='4'>Греция</option><option value='33'>Грузия</option><option value='23'>Дания</option><option value='90'>Доминикана</option><option value='80'>Египет</option><option value='18'>Израиль</option><option value='38'>Индонезия</option><option value='67'>Иордания</option><option value='63'>Иран</option><option value='11'>Ирландия</option><option value='39'>Исландия</option><option value='14'>Испания</option><option value='12'>Италия</option><option value='34'>Казахстан</option><option value='78'>Камбоджа</option><option value='3'>Канада</option><option value='40'>Катар</option><option value='85'>Кения</option><option value='64'>Кипр</option><option value='15'>Колумбия</option><option value='56'>Косово</option><option value='43'>Латвия</option><option value='87'>Ливан</option><option value='29'>Люксембург</option><option value='10'>Македония</option><option value='91'>Малайзия</option><option value='25'>Мальта</option><option value='61'>Марокко</option><option value='48'>Мексика</option><option value='65'>Монако</option><option value='62'>Монголия</option><option value='93'>Непал</option><option value='83'>Нигерия</option><option value='19'>Нидерланды</option><option value='30'>Новая Зеландия</option><option value='20'>Норвегия</option><option value='52'>ОАЭ</option><option value='92'>Пакистан</option><option value='71'>Панама</option><option value='73'>Перу</option><option value='26'>Польша</option><option value='42'>Португалия</option><option value='47'>Пуэрто Рико</option><option value='7'>Румыния</option><option value='89'>Сальвадор</option><option value='54'>Саудовская Аравия</option><option value='88'>Сенегал</option><option value='50'>Сербия</option><option value='37'>Сингапур</option><option value='32'>Словакия</option><option value='60'>Словения</option><option value='84'>Сомали</option><option value='75'>СССР</option><option value='86'>Судан</option><option value='46'>Таиланд</option><option value='51'>Тайвань</option><option value='94'>Танзания</option><option value='70'>Тунис</option><option value='77'>Турция</option><option value='66'>Украина</option><option value='69'>Уругвай</option><option value='68'>Филиппины</option><option value='24'>Финляндия</option><option value='81'>Французская Полинезия</option><option value='9'>Хорватия</option><option value='31'>Чехия</option><option value='28'>Чили</option><option value='6'>Швейцария</option><option value='22'>Швеция</option><option value='41'>Эстония</option><option value='5'>ЮАР</option><option value='95'>Югославия</option><option value='13'>Япония</option>
						</select>
					</div>
                    
                    <div multiple class="fb-sect flex-row flex-2">
						<select id='qualsel' multiple name="qual[]" data-placeholder="Качество">
							<option></option>
							<option value='0'>CAMRip</option><option value='1'>TS</option><option value='2'>HD</option>
						</select>
						<select id='soundsel' multiple name="sound[]" data-placeholder="Озвучка">
							<option></option>
							<option value='0'>Оригинал</option><option value='1'>Любительский</option><option value='2'>Авторский</option><option value='3'>Профессиональный</option><option value='4'>Дублированный</option>
						</select>
					</div>
                    
					<div id='actorcont' class="fb-sect fb-sel">
						<select id='actor'  name="actor" data-placeholder="Актер">
							<option value=''></option>
                            <option value=''></option>
                            <option value=''></option>
                            <option value=''></option>
                            <option value=''></option>
                            <option value=''></option>
						</select>
					</div>
					
					<div id='dircont' class="fb-sect fb-sel">
						<select id='director'  name="director"  data-placeholder="Режиссер">
							<option value=''></option>
                            <option value=''></option>
                            <option value=''></option>
                            <option value=''></option>
                            <option value=''></option>
                            <option value=''></option>
						</select>
					</div>
                    
                    <div class="fb-sect flex-row flex-2">
						<label class="fb-check">
							<input class="tp" name="type" value="3" type="radio">
							<span>Фильм</span>
						</label>
						<label class="fb-check">
							<input class="tp" name="type" value="4" type="radio">
							<span>Сериал</span>
						</label>
					</div>
                    
                    <div class="fb-sect flex-row flex-2">
						<select name="year_start" data-placeholder="Год от">
							<option></option>
							<option value='1971'>1971</option><option value='1972'>1972</option><option value='1973'>1973</option><option value='1974'>1974</option><option value='1975'>1975</option><option value='1983'>1983</option><option value='1990'>1990</option><option value='1992'>1992</option><option value='1993'>1993</option><option value='1994'>1994</option><option value='1995'>1995</option><option value='1996'>1996</option><option value='1997'>1997</option><option value='1998'>1998</option><option value='1999'>1999</option><option value='2000'>2000</option><option value='2001'>2001</option><option value='2002'>2002</option><option value='2003'>2003</option><option value='2004'>2004</option><option value='2005'>2005</option><option value='2006'>2006</option><option value='2007'>2007</option><option value='2008'>2008</option><option value='2009'>2009</option><option value='2010'>2010</option><option value='2011'>2011</option><option value='2012'>2012</option><option value='2013'>2013</option><option value='2014'>2014</option><option value='2015'>2015</option><option value='2016'>2016</option><option value='2017'>2017</option><option value='2018'>2018</option>
						</select>
						<select name="year_end" data-placeholder="Год до">
							<option></option>
							<option value='1971'>1971</option><option value='1972'>1972</option><option value='1973'>1973</option><option value='1974'>1974</option><option value='1975'>1975</option><option value='1983'>1983</option><option value='1990'>1990</option><option value='1992'>1992</option><option value='1993'>1993</option><option value='1994'>1994</option><option value='1995'>1995</option><option value='1996'>1996</option><option value='1997'>1997</option><option value='1998'>1998</option><option value='1999'>1999</option><option value='2000'>2000</option><option value='2001'>2001</option><option value='2002'>2002</option><option value='2003'>2003</option><option value='2004'>2004</option><option value='2005'>2005</option><option value='2006'>2006</option><option value='2007'>2007</option><option value='2008'>2008</option><option value='2009'>2009</option><option value='2010'>2010</option><option value='2011'>2011</option><option value='2012'>2012</option><option value='2013'>2013</option><option value='2014'>2014</option><option value='2015'>2015</option><option value='2016'>2016</option><option value='2017'>2017</option><option value='2018'>2018</option>
						</select>
					</div>
                    
                    <div class="fb-sect flex-row flex-2">
						<label class="fb-check">
							<input id="" name="orderby" value="alph" type="radio">
							<span>По алфавиту</span>
						</label>
						<label class="fb-check">
							<input id="" name="orderby" value="postdate" type="radio">
							<span>По дате</span>
						</label>
					</div>
                    
                    
				

					
					<div class="fb-submit flex-row flex-2">
						<input id="filtrsub" class="filtr_btns" type="submit" data-fieldsearch="submit" value="Поиск">
						<input id="filtrreset" class="filtr_btns" type="button" data-fieldsearch="reset" value="Очистить">
					</div>
                    </form>
                </div>
			</div>
				[/not-aviable] --->
                      
					<div class="side-box to-mob">
                        <div class="side-bt icon-l"><span class="fa fa-navicon"></span>Панель навигация</div>
						{include file="menu.tpl"}               
                        </div>

                     <div class="side-box tabs-box">
                     <div class="side-bt icon-l"><span class="fa fa-vk"></span>Мы ВКонтакте</div>
                     </div>
                     
                   [not-aviable=showfull] 
					<div class="side-box tabs-box">
                     <div class="side-bt icon-l"><span class="fa fa-trophy"></span>Популярное за неделю</div>   
						<div class="tabs-sel fx-row">
							<span class="current">Фильмы</span>
							<span>Мультфильмы</span>
							<span>Сериалы</span>
						</div>
                        <div class="side-bc tabs-b">       
                 {custom category="0" template="films" limit="6" order="rating"}    
                  {custom category="2" template="mult_rating" days="7" limit="10" order="rating"}     
	                 </div>
						<div class="side-bc tabs-b">       
                  {custom category="" template="multfilm" limit="1" order="rating"}
                  {custom category="24" template="mult_rating" days="7" limit="10" order="rating"}             
						</div>
						<div class="side-bc tabs-b">
				 {custom category="" template="multfilm" limit="0" order="rating"}     
                 {custom category="35,36,37" template="mult_rating" days="7" limit="10" order="rating"}   
						</div>
				[/not-aviable]
					
					<div class="side-box">
                        <div class="side-bt icon-l"><span class="fa fa-television"></span>Обновления сериалов</div>
						<div class="side-bc">
					 {custom category="35-37" template="serials" aviable="global" from="0" limit="10" cache="no"}   
					</div>
						</div>
					<div class="side-box">
                        <div class="side-bt icon-l"><span class="fa fa-calendar"></span>Ожидаемые новинки</div>
						<div class="side-bc owl-side owl-carousel" id="owl-side">
					{custom category="65" template="skoro" aviable="global" from="0" limit="10" cache="no" order="rand"}  
						</div>
					</div>
					 [not-aviable=showfull]	
					<div class="side-box">
						<div class="side-bt">Комментируют</div>
						<div class="side-bc">
                {customcomments template="custom-lcomm" from="0" limit="5" cache="yes"}  
					    </div>	
						</div>
			     	[/not-aviable]
                   

					</aside>

				<!-- END SIDE -->
			
			</div>
	
				
			<!-- END COLS -->
		
		[not-aviable=showfull]	
		<div class="desc-text fx-last">
		
			<h1><span>Смотреть</span> фильмы онлайн</h1>
			<p>Даже утонченные киноманы, уверяющие, что смотреть фильмы на экранах киноцентров несравненно увлекательнее, чем за компьютером, сегодня все чаще изменяют своим привычкам и ищут киноленты в Сети. Многочисленные онлайн-кинотеатры благодаря наличию значимых преимуществ превратились в грозных конкурентов обычных кинозалов, причем эта тенденция наблюдается практически во всех государствах, где развит Интернет.</p>
			<p><img src="{THEME}/images/kinoface.png" alt="посмотреть фильмы">
			<h2><span>7 плюсов</span> онлайн-кинотеатров</h2>
			<p>Стоит один раз посмотреть кинофильм в Сети, и достоинства такого просмотра станут очевидны. Опытные кинозрители среди ключевых преимуществ <strong>кино онлайн</strong> называют:</p>
			<p><li>1. Возможность целиком сосредоточиться на зрелище. Шепот за спиной и хруст попкорна, кашель простуженных зрителей зимой и духота летом — эти и прочие "прелести" обычных кинотеатров, мешающие погрузиться в головокружительный мир боевика или оценить сложность сюжета артхаусной драмы, полностью отсутствуют при домашнем просмотре. Никто и ничто не отвлечет вас, а если вам захочется пересмотреть какую-то сцену, для этого достаточно будет одного клика.</li>
			<li>2. Отсутствие временных ограничений. Прошли времена, когда мы колебались, какой сеанс - утренний или вечерний — лучше; сейчас можно просматривать <strong>фильмы онлайн в хорошем качестве</strong> в любое время суток.</li>
			<li>3. Экономия, причем не только денег, но и времени: нет нужды тратить его на дорогу до киноцентра, на очередь в кассу и зал.</li>
			<li>4. Богатство выбора. В Интернет-кинотеатре можно найти не только последние кинохиты, но и шедевры минувшего, сериалы из разных стран, редчайшие документальные ленты.</li>
			<li>5. Возможность сделать паузу. Нужно прерваться на три минуты или на сутки? Вы не только сделаете перерыв, когда потребуется, но и безошибочно вернетесь именно к тому эпизоду, на котором остановились.</li>
			<li>6. Удобство. Даже наиболее уютный кинозал не предоставит условий, хотя бы отчасти похожих на домашние: вы можете смотреть лежа или сидя с бокалом в руках, расслабившись летним вечером на балконе и даже принимая ванну.</li>
			<li>7. Повод позвать друзей: дома можно устроить коллективный просмотр для дружной большой компании.</li></p>
            
            <h2><span>Кино</span> в HD-качестве</h2>
            <p>Всеми этими преимуществами обладает и наш онлайн-кинотеатр, но ими его достоинства не исчерпываются. Стремясь к максимальному удобству, мы не только предлагаем новейшие фильмы бесплатно в hd-качестве, но и разработали сайт с интуитивно понятной навигацией, на котором легко найти какой угодно кинофильм независимо от его жанра. Не обязательно иметь мощный компьютер, чтобы наслаждаться киноискусством: на любом устройстве от нетбука до смартфона "картинка" будет одинаково качественной, а звук — безупречным.</p>
			<p>Каждый день мы обновляем видеотеку, тщательно выбирая из огромного количества фильмов и сериалов лучшие во всех отношениях, с профессиональным дубляжом и идеальным изображением. С нами вы будете в курсе всех сенсаций и увидите получившие премии фильмы до выхода их в широкий прокат тогда, когда вам захочется, в уютной обстановке и без затрат.</p>
            <h2><span>FILMS-HD.RU © 2018</span>- все права защищены.</h2>
		</div>

		</div>
		</section>
		<!-- END CONT -->
		[/not-aviable]
	
	
	<!-- END MAIN-BLOCK -->
	<footer class="footer wrap-center fx-row fx-middle">
			<div class="footer-menu">
				<a href="/pravoobladateli.html" rel="nofollow">Правообладателям</a>
				<a href="/index.php?do=feedback" rel="nofollow">Контакты</a>
				<a href="#" rel="nofollow">Размещение рекламы</a>
			</div>
		<div class="footer-right"> 
<noindex><!--LiveInternet counter--><script type="text/javascript">
document.write("<a href='//www.liveinternet.ru/click' "+
"target=_blank><img src='//counter.yadro.ru/hit?t38.7;r"+
escape(document.referrer)+((typeof(screen)=="undefined")?"":
";s"+screen.width+"*"+screen.height+"*"+(screen.colorDepth?
screen.colorDepth:screen.pixelDepth))+";u"+escape(document.URL)+
";h"+escape(document.title.substring(0,150))+";"+Math.random()+
"' alt='' title='LiveInternet' "+
"border='0' width='31' height='31'><\/a>")
</script><!--/LiveInternet--></noindex>
		</div>
	</footer>
	
	<!-- END FOOTER -->



<!-- END WRAP -->

<link href="/engine/classes/min/index.php?charset=utf-8&amp;f=engine/editor/css/default.css&amp;v=24" rel="stylesheet" type="text/css">
<script src="/engine/classes/min/index.php?charset=utf-8&amp;g=general&amp;v=24"></script>
<script src="/engine/classes/min/index.php?charset=utf-8&amp;f=engine/classes/js/jqueryui.js,engine/classes/js/dle_js.js&amp;v=24" defer></script>
<script src="{THEME}/js/libs.js"></script>

<script src="{THEME}/js/share.js" charset="utf-8"></script>
    
 

<script>
$(document).ready(function(){
    var c=Cookies.get('newsnum');
    if (c)
       $('#newsnum').val(c); 
    $('#newsnum').change(function(){
        Cookies.set('newsnum',$(this).val());
        Cookies.set('setnewsnum',1);
        location.reload();
    });
});
</script>

<script src="{THEME}/js/filter-xf.js"></script>
  <script src="{THEME}/js/scripts.js"></script>
</body>
</html>