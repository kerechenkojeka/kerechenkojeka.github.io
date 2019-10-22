<form method="post" name="dlemasscomments" id="dlemasscomments"><div id="dle-comments-list">
<div id="comment"></div><div id="comment-id-31">

<div class="comm-item clearfix">
	<div class="comm-left img-box img-shadow">
		<img src="{foto}" alt="{login}">
	</div>
	<div class="comm-right">
		<div class="comm-one clearfix">
			<span class="comm-author">{author}</span>
			<span>{group-name}</span>
			<span>{date}</span>
			
			  [rating-type-3]
			<div class="rate3-comm clearfix">
				[rating-plus]<span class="fa fa-thumbs-up"></span>[/rating-plus]
				<span id="comments-ratig-layer-31" class="ignore-select"><span class="ratingtypeplusminus ignore-select ratingplus">{rating}</span></span>
				[rating-minus]<span class="fa fa-thumbs-down"></span>[/rating-minus] 
			</div> 
		 [/rating-type-3]	
		</div>
		<div class="comm-two clearfix full-text">
			<div id="comm-id-31">{comment}</div>
		</div>
		<ul class="comm-three icon-l clearfix">
            [not-aviable=lastcomments]
			<li[not-treecomments] class="reply"[/not-treecomments]><i class="fa fa-reply"></i>[reply]Ответить[/reply]</li>
            <li class="mob-vis"><i class="fa fa-quote-right"></i>[fast]Цитата[/fast]</li>
				[/not-aviable]
				[not-group=5]
				<li>[spam]Спам[/spam]</li>
				<li>[complaint]Пожаловаться[/complaint]</li>
				<li>[com-edit]Редактировать[/com-edit]</li>
				<li>[com-del]Удалить[/com-del]</li>
				<li>{mass-action}</li>
				[/not-group]
			</ul>
	</div>
</div>
</div>
<div id="dle-ajax-comments"></div>
</div></form>