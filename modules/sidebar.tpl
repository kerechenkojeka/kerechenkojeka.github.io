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
            <p class="h-sidebar"><i class="fa fa-video-camera"></i> Новые фильмы</p>
            <ul class="shortstory-film3">
                {custom category="1" template="cust2" limit="6" order="date"}
            </ul>
        </div>
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
            <p class="h-sidebar"><i class="fa fa-globe"></i> События в кино</p>
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