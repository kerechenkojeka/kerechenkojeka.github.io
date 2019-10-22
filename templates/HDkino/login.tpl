[not-group=5]
<div class="exit-login">
					<div class="ava-user">
						<a href="{profile-link}"><img src="{foto}" alt="drug53" /></a>
					</div>
					<ul class="user-menu">
						<li><a href="{pm-link}">Сообщения <span>+{new-pm}</span></a></li>
						<li><a href="{favorites-link}">Мои закладки <span>+{favorite-count}</span></a></li>
					</ul>
					<div class="exit">
						<a href="{logout-link}">Выход</a>
					</div>
</div>
[/not-group]
[group=5]
<form method="post" class="login-f" action="">
					<input type="text" name="login_name" class="input-l" id="login_name" placeholder="Логин...">
					<input type="password" name="login_password" class="input-p" id="login_password" placeholder="Пароль...">
					<input class="fbutton-enter" onclick="submit();" name="image" type="submit" value="Вход" alt="Login">
					<input name="login" type="hidden" id="login" value="submit">
					<div class="clear"></div>
					<a href="/index.php?do=register" class="btn-register">Регистрация</a>
					<a class="inf-pass" href="/index.php?do=lostpassword">Забыли пароль?</a>
</form>	[/group]