[not-group=5]
<div class="header-bar__profile">
	<span class="header-bar__profile-avatar">
	    <img src="{foto}" height="30" width="30" alt="{login}" title="{login}">
	</span>
	<span class="header-bar__profile-pm">{new-pm}</span>
	<button type="button" class="header-bar__profile-name"><span>{login}</span></button>
	<ul class="header-bar__profile-menu">
		[admin-link]<li><a href="{admin-link}" target="_blank">Админпанель</a></li>[/admin-link]
		<li><a href="{profile-link}">Профиль</a></li>
		<li><span class="header-bar__count">{new-pm}</span><a href="{pm-link}">Сообщения</a></li>
		<li><span class="header-bar__count">{favorite-count}</span><a href="{favorites-link}">Закладки</a></li>
		<li><a href="{addnews-link}">Добавить новость</a></li>
	</ul>
</div>
<a href="{logout-link}" class="header-bar__profile-logout">Выйти</a>
[/not-group]
[group=5]
<!--noindex-->
<div class="popup popup_side-block popup_login">
	<div class="popup__scroll-wrapper">
		<div class="popup__container">
			<button type="button" class="popup__close"></button>
			<div class="popup__title">Авторизация</div>
			<div class="popup__content">
				<form method="post" style="margin:0" >
					<input maxlength="28" type="text" name="login_name" id="login_name" class="login-username" placeholder="{login-method}">
					<input maxlength="23" type="password" name="login_password" id="login_password" class="login-password" placeholder="Пароль:">
					<button type="submit" onclick="submit();" class="button_green login-submit">Авторизоваться</button>
					<input name="login" type="hidden" id="login" value="submit">
				</form>
			</div>
		</div><div class="popup__container-side">
		    <div class="popup__side-text">Войти через</div>
		<div class="login-soc-btns">
		    <a href="{vk_url}" target="_blank"><img src="{THEME}/images/social/vk.png" /></a>
			<a href="{odnoklassniki_url}" target="_blank"><img src="{THEME}/images/social/ok.png" /></a>
			<a href="{facebook_url}" target="_blank"><img src="{THEME}/images/social/fb.png" /></a>
			<a href="{mailru_url}" target="_blank"><img src="{THEME}/images/social/mail.png" /></a>
			<a href="{google_url}" target="_blank"><img src="{THEME}/images/social/google.png" /></a>
			<a href="{yandex_url}" target="_blank"><img src="{THEME}/images/social/yandex.png" /></a>
		</div>
			<a href="{registration-link}" class="button button_line" rel="nofollow">Регистрация</a>
			<a href="{lostpassword-link}" class="button button_line" rel="nofollow">Восстановить пароль</a>
		</div>
	</div>
</div>
<!--/noindex-->
[/group]