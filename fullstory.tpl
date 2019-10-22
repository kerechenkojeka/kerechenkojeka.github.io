<section class="inner-entry entry">
	<div class="inner-entry__allinfo-wrapper clearfix">
		<div class="inner-entry__image">
			<img src="{image-1}" alt="{title}">
		</div>
		<div class="inner-entry__allinfo">
			<h1 class="inner-entry__title">{title}</h1>
			<div class="inner-entry__stat">
				<span class="entry__author">Залил: {author} <span class="entry__stat-divider">/</span> </span>
				<span class="entry__date">{date=d.m.Y}</span><span class="entry__stat-divider">/</span> 
				<span class="entry__reads"><span>Просмотров: </span>&nbsp;{views}</span> <span class="entry__stat-divider">/</span> 
				<span class="entry__comments"><span>Комментариев:&nbsp;</span></span>[com-link]{comments-num}[/com-link]
			</div>
			<div class="inner-entry__info">
			    [rating-type-1]
				<div class="entry__rating">
					<span class="entry__rating-value entry__rating-value_turquoise">{rate-val}</span>
					{rating}
				</div>
				[/rating-type-1]
				[rating-type-2]
				<div class="entry__rating type3">
					[rating-plus]<i class="fa fa-thumbs-o-up" title="Нравится"></i>[/rating-plus]
					<span class="entry__rating-value entry__rating-value_turquoise">{likes}</span>
				</div>
				[/rating-type-2]
				[rating-type-3]
				<div class="entry__rating type3">
					[rating-plus]<i class="fa fa-thumbs-o-up" title="Нравится"></i>[/rating-plus]
					<span class="entry__rating-value">{likes}</span>
					[rating-minus]<i class="fa fa-thumbs-o-down" title="Не нравится"></i>[/rating-minus]
				</div>
				[/rating-type-3]
				[rating-type-4]
				<div class="entry__rating type4">
					[rating-plus]<i class="fa fa-thumbs-o-up" title="Нравится"></i>[/rating-plus]
					<span class="entry__rating-value entry__rating-value_turquoise">{likes}</span>
					[rating-minus]<i class="fa fa-thumbs-o-down" title="Не нравится"></i>[/rating-minus]
					<span class="entry__rating-value entry__rating-value_red">{dislikes}</span>
				</div>
				[/rating-type-4]
				<span class="entry__info-size">15.93 Гб</span>
				
				<div class="entry__info-categories">
					<div class="entry__info-wrapper">
						<img src="{category-icon}" /> {link-category}
					</div>
				</div>
			</div>
			[group=5]<a href="#" class="popup-open popup-open_login" rel="nofollow"><span class="inner-entry__bookmark" title="Добавить в закладки"> В закладки</span></a>[/group]
			[not-group=5]
			[add-favorites]<span class="inner-entry__bookmark" title="Добавить в закладки"> В закладки</span>[/add-favorites]
			[del-favorites]<span class="inner-entry__bookmark inner-entry__bookmark_added" title="Убрать из закладок"> В закладках</span>[/del-favorites]
			[/not-group]
			[complaint]<span class="inner-entry__thanks button_secondary">Пожаловаться</span>[/complaint]
			<div class="inner-entry__buttons">
				<a href="#download" class="inner-entry__download entry__info-download">Скачать торрент</a>
				<a href="#" class="trailer-btn button_line button_line_blue inner-entry__trailer"><span>Смотреть&nbsp;</span>трейлер</a>
				<a href="#online" class="button_line inner-entry__online"><span>Смотреть&nbsp;</span>онлайн</a>
			</div>
		</div>
	</div>
	<div id="msg" class="inner-entry__content-text">
		{full-story}
	</div>
	<div class="ftabs tabs-box" id="online">
		
		    <div class="tabs-sel">
			    <span class="current">Плеер 1</span>
				<span>Плеер 2</span>
			</div>
			
			<div class="fplayer video-box tabs-b visible">
			    <iframe width="560" height="400" src="https://www.youtube.com/embed/a6SnwsyjDbQ" frameborder="0" allowfullscreen></iframe>
			</div>
			
			<div class="fplayer video-box tabs-b">
			    <iframe width="560" height="400" src="https://www.youtube.com/embed/a6SnwsyjDbQ" frameborder="0" allowfullscreen></iframe>
			</div>
			
	</div>
	[xfgiven_download]
	<div id="download" class="download-buttons">
		<h2 class="inner-entry__download-header">Скачать торрент {title} бесплатно</h2>
		[xfvalue_download]
	</div>
	[/xfgiven_download]
	[related-news]
	<div class="inner-entry__related">
		<div class="related">
		    <h3 class="inner-entry__related-header">Похожие торренты</h3>
			<ul class="uRelatedEntries">{related-news}</ul>
		</div>
	</div>
	[/related-news]
	<div class="inner-entry__share-discuss">
		<div class="inner-entry__share yashare-auto-init" data-yashareL10n="ru" data-yashareQuickServices="vkontakte,facebook,twitter,odnoklassniki,moimir" data-yashareTheme="counter"></div>
		<!--noindex-->[complaint]<span class="inner-entry__discuss" title="Нажмите, если нашли ошибку!" rel="nofollow"><span>Нашел ошибку? Есть жалоба? Жми!</span><br>Пожаловаться администрации</span>[/complaint]<!--/noindex-->
	</div>
</section>

<section class="comments block">
    <div class="block__title h3">Комментарии <span>{comments-num}</span></div>
	[not-comments]Комментариев пока нет. Стань первым![/not-comments]
	{comments}
	{navigation}
</section>
{addcomments}
<script type="text/javascript" async="async" src="//yastatic.net/share/share.js" charset="utf-8"></script>
<div id="trailer-box" title="Трейлер {title}">
	<iframe width="560" height="400" src="https://www.youtube.com/embed/eX_iASz1Si8" frameborder="0" allowfullscreen></iframe>
</div>