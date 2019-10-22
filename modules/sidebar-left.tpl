<aside class="main__left clearfix clearfix_right">
	<div class="nav-drawer">
		<div class="nav-drawer__content">
			<div class="nav-drawer__login">
				[group=5]
				<a href="#" class="header-bar__link header-bar__link_login popup-open popup-open_login ic_login-white" rel="nofollow"><span>Вход</span></a>
				<a href="/index.php?do=register" class="header-bar__link header-bar__link_reg ic_reg-white" rel="nofollow"><span>Регистрация</span></a>
				[/group]
				[not-group=5]{login}[/not-group]
			</div>
			
			<div class="block block_green block_categories">
				<div class="block__title">Категории</div>
				<ul class="block__menu block__menu_depth-2">
				    {catmenu id="1-20" subcat="yes"}
				</ul>
			</div>
		</div>
	</div>
	
	<div class="block block_awaiting">
		<div class="block__title">Ожидается</div>
		<div class="awaiting-entries">
			{custom category="1-20" template="custom-left" aviable="global" from="0" limit="3" cache="no"}
		</div>
	</div>
	<div class="block">
	    <div class="block__title">Реклама</div>
		<a href="#"><img src="{THEME}/images/240x400.jpg"></a>
	</div>
</aside>