<link media="screen" href="{THEME}/images/orderdesc/style.css" type="text/css" rel="stylesheet" />
<script src="{THEME}/images/orderdesc/script.js"></script>

<div id="orderdesc-area">
    <div style="margin-left: 20px;"><h1 title="Стол заказов" style="font-size: 23px;color:#DBDBDB;">Стол заказов</h1>
	<p style="color:#DBDBDB;font-size:15px;">Наш сайт предлагает удобную услугу по поиску желаемого вами материала. Вам достаточно заполнить необходимые поля для поиска фильма/мультфильма/сериала/аниме и мы постараемся в ближайшее время его найти и выложить на сайте.<br>Помните, чем более подробную информацию вы укажете, тем быстрее фильм/мультфильм/сериал будет найден и выложен у нас на сайте! </p><div style="color: red;font-size:13px">Фильм, мультфильм, сериал, аниме должен присутствовать на сайте Kinopoisk.ru</div><p></p>
<br>
	<div id="orderdesc-actions">
		[guest]<a href="#" id="orderdesc-add">Добавить заявку</a>[/guest]
		<form id="orderdesc-search-area" method="get">
			{searchqueries}
			<input type="text" value="Что ищем?" onfocus="if(this.value=='Что ищем?')this.value='';" onblur="if(this.value=='') this.value='Что ищем?';" MAXLENGTH="50" name="search" id="orderdesc-search-input" /><input type="submit" value="" id="orderdesc-search-find" />
		</form>
	</div>
	<div class="odclear"></div>
[guest]	<div id="orderdesc-add-area">
		<form method="post">
			<h4></h4>
			<input type="text" name="title" id="orderdesc_title" style="width:400px;padding:0 10px;margin:3px;" placeholder="Название на русском языке(*)" class="input1">
			<ul id="orderdesc_related"></ul>
			<h4></h4>
			<input type="text" name="orig_title" style="width:400px;padding:0 10px;margin:3px;" placeholder="Название на оригинальном языке:" class="input1">
			<h4></h4>
			<select name="category" style="width:400px;padding:0 10px;margin:3px;"><option value="1">Фильм</option><option value="2">Сериал</option><option value="3">Аниме</option><option value="4">Мультфильм</option></select>
			<h4></h4>
		<input type="text" name="year" style="width:400px;padding:0 10px;margin:3px;" placeholder="Год" class="input1">
			<h4></h4>
			<textarea name="descr" class="feedbackta" placeholder="По возможности указывайте ссылку на kinopoisk.ru" style="width:400px;padding:0 10px;margin:3px;"></textarea>
			<input type="hidden" name="do" value="orderdesc"><input type="hidden" name="action" value="addorder">
			[group=1,2,3,4,6]<input type="submit" value="Добавить" id="orderdesc-add-submit" class="site_button color_button">[/group] 
            
		</form>
	</div>
[/guest]
[filters]	<div id="orderdesc-filters">{filters}<div class="odclear"></div></div>[/filters]
	<table id="orderdesc-table">
		<thead><tr>
			<td title="Статус заявки" width="16px"><i class="orderdesc-icon"></i></td>
			<td><a href="{url}&amp;sort=title" title="Сортировать по заголовку">Название</a></td>
			<td width="85px">Категория</td>
			<td width="90px">Заказчик</td>
			<td class="odtdcenter" width="75px"><a href="{url}&amp;sort=date" title="Сортировать по дате подачи заявки">Дата заказа</a></td>
			<td class="odtdcenter" width="30px"><a href="{url}&amp;sort=year" title="Сортировать по дате выхода">Год</a></td>
			<td class="odtdcenter" width="40px" title="Рейтинг"><a class="orderdesc-icon orderdesc-rating-td" href="{url}&amp;sort=rating" title="Сортировать по рейтингу"></a></td>
		</tr></thead>
		<tbody>{list}</tbody>
	</table>
	
	[navigation]<div id="orderdesc-navigation">{navigation}</div>[/navigation]
</div>