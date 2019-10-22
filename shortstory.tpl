<div class="entry">
	<div class="entry__title h2"><a href="{full-link}">{title}</a></div>
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
		<span class="entry__rating-value short-rate">{likes}</span>
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
	<div class="entry__stat">
		<span class="entry__author">Залил: <!--noindex-->{author}<!--/noindex--> <span class="entry__stat-divider">/</span> </span>
		<span class="entry__date">{date}</span> <span class="entry__stat-divider">/</span> 
		<span class="entry__reads"><span>Просмотров: </span>&nbsp;{views}</span> <span class="entry__stat-divider">/</span> 
		<span class="entry__comments"><span>Комментариев:&nbsp;</span></span><!--noindex-->[com-link]{comments-num}[/com-link]<!--/noindex-->
	</div>
	<hr class="entry__header-divider">
	<div class="entry_content">
		<a href="{full-link}" class="entry__content-image" title="Перейти к скачиванию торрента..." rel="nofollow">
		    <img src="{image-1}" alt="{title}">
		</a>
		<div class="entry__content-description">
			{short-story limit="500"}
		</div>
	</div>
	<div class="entry__info">
		<a href="{full-link}#download" rel="nofollow" class="entry__info-download">Скачать торрент</a>
		[group=5]<a href="#" class="popup-open popup-open_login" rel="nofollow"><span class="entry__bookmark" title="Добавить в закладки"></span></a>[/group]
		[not-group=5]
		[add-favorites]<span class="entry__bookmark" title="Добавить в закладки"></span>[/add-favorites]
		[del-favorites]<span class="entry__bookmark entry__bookmark_added" title="Убрать из закладок"></span>[/del-favorites]
		[/not-group]
		<span class="entry__info-size">20.10 Мб</span>
		<div class="entry__info-categories"><div class="entry__info-wrapper"><img src="{category-icon}" /> {link-category}</div></div>
	</div>
</div>