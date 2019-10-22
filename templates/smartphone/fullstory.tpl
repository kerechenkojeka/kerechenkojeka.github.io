{poll}
<article class="post fullstory">
	<h1 class="title">[full-link]{title}[/full-link]</h1>
	<ul class="post-info">
		<li class="iauthor ico">[profile]<b>{login}</b>[/profile]</li>
		<li class="idate ico">{date}</li>
		<li class="iviews ico">{views}</li>
	</ul>
	<p class="icat ico">{link-category}</p>
	<div class="post-cont clrfix">
	<center><img src="[xfvalue_poster]" alt="{title}"/></center>
		{full-story}
		<strong>Смотреть {title} онлайн в качестве</strong> <br>
		<iframe width="100%" src="[xfvalue_play]" frameborder="0" allowfullscreen></iframe>
	</div>
</article>
[related-news]
<div class="box">
	<h3>Похожие новости</h3>
	<nav id="rel-news">
		{related-news}
	</nav>
</div>
[/related-news]
<div class="box commentbox">
	<h3>Комментарии ({comments-num})</h3>
	[comments]{comments}[/comments]
</div>