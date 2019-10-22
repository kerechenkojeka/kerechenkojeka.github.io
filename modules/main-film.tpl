<div class="content-left">
    <div class="block-white padding-t25">

        <section class="block-standart">
            <header class="h-red">
                <h2><b>Новые фильмы</b></h2>
                <a href="#" title="Все новые фильмы" class="a-small">Все фильмы <i class="fa fa-youtube-play fa-lg"></i></a>
            </header> 
            <div class="film-bar">
                {custom category="1" template="shortstory" limit="16" order="date"}
                <div class="clearfix"></div>          
            </div>
        </section>
    </div>
</div>

<div class="content-right">
    <div>
        {custom category="1" template="cust1" limit="1" order="date"}
        <div class="margin-b25">
            <p class="h-sidebar"><i class="fa fa-bars"></i> Навигация по сайту</p>
            <ul class="nav-sidebar">                        	
                <li><a href="#">Биография</a></li>
                <li><a href="#">Боевик</a></li>
                <li><a href="#">Вестерн</a></li>
                <li><a href="#">Военный</a></li>
                <li><a href="#">Детектив</a></li>
				<li><a href="#"><b>Драма</b></a></li>
                <li><a href="#">Детский</a></li>
				<li><a href="#">Документальный</a></li>
				<li><a href="#">Для взрослых</a></li>
                <li><a href="#">Исторический</a></li>
                <li><a href="#">Катастрофы</a></li>
				<li class="nav-sidebar-red"><a href="#"><b>Комедия</b></a></li>
				<li><a href="#">Короткометражки</a></li>
                <li><a href="#">Криминал</a></li>
				<li><a href="#">Мелодрама</a></li>
                <li><a href="#">Мюзикл</a></li>
                <li><a href="#">Приключения</a></li>
                <li><a href="#">Семейный</a></li>
                <li><a href="#">Спорт</a></li>
				<li><a href="#">ТВ шоу</a></li>
                <li><a href="#">Триллер</a></li>
				<li><a href="#"><b>Ужасы</b></a></li>
                <li><a href="#">Фантастика</a></li>
                <li><a href="#">Фентези</a></li>
            </ul>
            <ul class="nav-year">
                <li><a href="#"><b>2017</b> год</a></li>
                <li><a href="#"><b>2016</b> год</a></li>
                <li><a href="#"><b>2015</b> год</a></li>
            </ul>
            <ul class="nav-category">
                <li><a href="#">Русские <i>фильмы</i></a></li>
                <li><a href="#">Испанские <i>фильмы</i></a></li>
                <li><a href="#">Французские <i>фильмы</i></a></li>
                <li><a href="#">Британские <i>фильмы</i></a></li>
                <li><a href="#">Итальянские <i>фильмы</i></a></li>
                <li><a href="#">Азиатские <i>фильмы</i></a></li>
                <li><a href="#">Индийские <i>фильмы</i></a></li>
                <li><a href="#">Немецкие <i>фильмы</i></a></li>
            </ul>
        </div>
        <div>
            <p class="h-sidebar"><i class="fa fa-video-camera"></i> Рекомендуем</p>
            <ul class="shortstory-film3">
                {custom category="1" template="cust2" limit="4" order="date"}
            </ul>
        </div>
    </div>
</div>
<div class="clearfix"></div>

<section id="main-trailer" class="block-black">
    <header class="h-black">
        <h2><b>Скоро в прокате</b></h2>
        <a href="#" title="Новые трейлеры" class="a-small a-black">Скоро в прокате <i class="fa fa-youtube-play fa-lg"></i></a>
    </header>
    <div id="bar-trailer" class="carousel slide" data-ride="carousel" data-interval="0">
        <div class="content-left">
            <div>
                <div class="carousel-inner" role="listbox">
                    {custom category="1" template="cust3" limit="8" order="date"}
                </div>
                <a class="left carousel-control" href="#bar-trailer" role="button" data-slide="prev">
                    <i class="fa fa-angle-left"></i>
                </a>
                <a class="right carousel-control" href="#bar-trailer" role="button" data-slide="next">
                    <i class="fa fa-angle-right"></i>
                </a> 
            </div>
        </div>
        <div class="content-right">
            <ol class="carousel-indicators">
                {custom category="1" template="cust4" limit="8" order="date"}
            </ol>
        </div>
        <div class="clearfix"></div>
    </div>
</section>

<div class="content-left">
    <div class="block-white padding-t25">

        <section class="block-standart">
            <header class="h-red">
                <h2><b>Сериалы онлайн</b></h2>
                <a href="#" title="Все новые сериалы" class="a-small">Все сериалы <i class="fa fa-youtube-play fa-lg"></i></a>
            </header> 
            <div class="film-bar">
                {custom category="1" template="shortstory" limit="8" order="date"}
                <div class="clearfix"></div>          
            </div>
            <div class="block-serialmain">
            	{custom category="1" template="cust5" limit="15" order="date"}
                <div class="clearfix"></div>
            </div>
        </section>     

        <section class="block-grey">
            <header class="h-red">
                <h2><b>Мультфильмы онлайн</b></h2>
            </header>         
            <div id="owl-film2" class="owl-film owl-carousel">
                {custom category="1" template="cust6" limit="10" order="date"}
            </div>
        </section>
        <section class="block-yellow">                
            <div class="row">
                <div class="clearfix clearfix-992"></div>
                <div class="col-md-3 col-sm-6 col-xs-12 margin-b20">
                    <h2 class="h-yellow"><a href="#">Фильмы</a></h2>                            
                    <ol class="shortstory-collumn">
                        {custom category="1" template="cust7" limit="3" order="date"}
                    </ol>                            
                </div>            
                <div class="col-md-3 col-sm-6 col-xs-12 margin-b20">
                    <h2 class="h-yellow"><a href="#">Сериалы</a></h2>                            
                    <ol class="shortstory-collumn">
                        {custom category="1" template="cust7" limit="3" order="date"}                           
                    </ol>                            
                </div>
                <div class="clearfix clearfix-992"></div>
                <div class="col-md-3 col-sm-6 col-xs-12 margin-b20">
                    <h2 class="h-yellow"><a href="#">Мультфильмы</a></h2>                            
                    <ol class="shortstory-collumn">
                        {custom category="1" template="cust7" limit="3" order="date"}                           
                    </ol>                            
                </div>  
                <div class="col-md-3 col-sm-6 col-xs-12 margin-b20">
                    <h2 class="h-yellow"><a href="#">Аниме</a></h2>                            
                    <ol class="shortstory-collumn">
                        {custom category="1" template="cust7" limit="3" order="date"}                          
                    </ol>                            
                </div>  
            </div>     
        </section>
        <section class="block-grey">
            <header class="h-red">
                <h2><b>Лучшие боевики</b></h2>
            </header>         
            <div id="owl-film4" class="owl-film owl-carousel">
                {custom category="1" template="cust6" limit="10" order="date"}
            </div>
        </section>

    </div>
</div>

<div class="content-right">
    <div>
        <div class="margin-b25">
            <ul class="tabsf-ul" role="tablist">
                <li class="active"><a href="#tabsf1" role="tab" data-toggle="tab"><i class="fa fa-user" data-toggle="tooltip" data-placement="top" data-original-title="Просматриваемые фильмы"></i></a></li>
                <li><a href="#tabsf2" role="tab" data-toggle="tab"><i class="fa fa-calendar" data-toggle="tooltip" data-placement="top" data-original-title="Недавно добавленные фильмы"></i></a></li>
                <li><a href="#tabsf3" role="tab" data-toggle="tab"><i class="fa fa-comments-o" data-toggle="tooltip" data-placement="top" data-original-title="Комментируемые фильмы"></i></a></li>
                <li><a href="#tabsf4" role="tab" data-toggle="tab"><i class="fa fa-star-half-o" data-toggle="tooltip" data-placement="top" data-original-title="Рейтинговые фильмы"></i></a></li>
            </ul>           
            <div class="tabsf-content">
                <div id="tabsf1" class="tab-pane fade in active">
                    <ul class="shortstory-tabs">
                        {custom category="1" template="cust8" limit="7" order="reads"}
                    </ul>
                </div>
                <div id="tabsf2" class="tab-pane fade">
                    <ul class="shortstory-tabs">
                        {custom category="1" template="cust8" limit="7" order="date"}
                    </ul>
                </div>         
                <div id="tabsf3" class="tab-pane fade">
                    <ul class="shortstory-tabs">
                        {custom category="1" template="cust8" limit="7" order="comments"}
                    </ul>
                </div>
                <div id="tabsf4" class="tab-pane fade">
                    <ul class="shortstory-tabs">
                        {custom category="1" template="cust8" limit="7" order="rating"}
                    </ul>
                </div>        
            </div>
        </div>
        <div class="margin-b25">
            <p class="h-sidebar"><i class="fa fa-globe"></i> Новости кино</p>
            <ol class="shortstory-list">
                {custom category="1" template="cust9" limit="6" order="rating"} 
            </ol>
        </div>
        <div class="margin-b25">
            <p class="h-sidebar"><i class="fa fa-video-camera"></i> Ожидаемые фильмы</p>
            <ul class="shortstory-film3">
                {custom category="1" template="cust2" limit="4" order="date"}
            </ul>
        </div>
    </div>
</div>

<div class="clearfix"></div>