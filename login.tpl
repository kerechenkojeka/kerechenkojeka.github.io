[not-group=5]
<div class="move-in">
	<div class="btn-mobile-user" data-toggle="modal" data-target="#loginModal"><i class="fa fa-sign-in" style="color: #00D200"></i></div>
	<div class="user-panel">
		<div class="log-in">
			<a class="btn-user" id="logbtn" href="{profile-link}"><i class="fa fa-user"></i> {login}</a>
			<a class="btn-fav" href="{favorites-link}"><i class="fa fa-star"></i> Ваши закладки (<span id="favorite-count">{favorite-count}</span>)</a>
			<a class="btn-pm pm-check" href="{pm-link}" data-new="0" data-all="0"><i class="fa fa-envelope"></i> ЛС ({new-pm})</a>
			<a class="btn-sing" href="{logout-link}"><i class="fa fa-sign-out"></i> Выход</a>
		</div>
	</div>
</div>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Личный кабинет</h4>
			</div>
			<div class="modal-body">
				<a class="btn-default btn-modal" href="{profile-link}">{login}</a>
				<a class="btn-default btn-modal" href="{favorites-link}">Ваши закладки (<span id="favorite-count">{favorite-count}</span>)</a>
				<a class="btn-default btn-modal" href="{pm-link}">ЛС ({new-pm})</a>
			</div>
			<div class="modal-footer">
				<a class="btnm-reg logout-link" href="{logout-link}">Выход</a>
				<button type="button" class="btnm-enter" data-dismiss="modal">Закрыть</button>
			</div>
		</div>
	</div></div>
[/not-group]
[group=5]
<div class="move-in">
	<div class="btn-mobile-user btnm-login"><i class="fa fa-sign-in"></i></div>
	<div class="user-panel">
		<div class="log-in">
			<a class="btn-reg" href="{registration-link}" target="_blank" rel="nofollow"><i class="fa fa-user-plus"></i> Регистрация</a>
			<a class="btn-sing btnm-login" href="#" rel="nofollow" data-toggle="modal" data-target="#loginModal"><i class="fa fa-sign-in"></i> Вход</a>
		</div>
	</div>
</div>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-dialog modal-sm">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Авторизация</h4>
			</div>
				<form method="post">
				<input type="hidden" name="remember_me" value="1">
				<div class="modal-body">
					<div class="authorization-box">
						<div class="prelouder"><i class="fa fa-spinner fa-pulse"></i></div>
						<div class="message"></div>
						<div class="login-input"><p><input type="text" name="login_name" id="login_name" placeholder="Ваш логин"/></p></div>
						<div class="login-input"><p><input type="password" name="login_password" id="login_password" placeholder="Ваш пароль" /></p></div>
						<p class="lost-pass">
							(<a class="external-auth" href="{lostpassword-link}" rel="nofollow" target="_blank">Забыли пароль?</a>)
						</p>
					</div>
				</div>
				<div class="modal-footer">   
             <div class="login-button"> <button onclick="submit();" type="submit" title="Вход">Войти на сайт</button>
					<a class="btnm-reg" href="{registration-link}" rel="nofollow">Регистрация</a>
					<input name="login" type="hidden" id="login" value="submit" />
				</div>
				<div class="login-checkbox">
					<br><input type="checkbox" name="login_not_save" id="login_not_save" value="1"/>
					<label for="login_not_save">&nbsp;Чужой компьютер</label> 

				</div></div>
			</form>
			
		</div>
	</div>
</div>																																																																																																																																															[aviable=showfull]<span style="display:none;">все шаблоны для dle на сайте <a href="http://newtemplates.ru/">newtemplates.ru</a> скачать</span>[/aviable]
[/group]