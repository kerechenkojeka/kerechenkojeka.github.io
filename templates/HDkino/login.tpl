[not-group=5]
<div class="exit-login">
					<div class="ava-user">
						<a href="{profile-link}"><img src="{foto}" alt="drug53" /></a>
					</div>
					<ul class="user-menu">
						<li><a href="{pm-link}">��������� <span>+{new-pm}</span></a></li>
						<li><a href="{favorites-link}">��� �������� <span>+{favorite-count}</span></a></li>
					</ul>
					<div class="exit">
						<a href="{logout-link}">�����</a>
					</div>
</div>
[/not-group]
[group=5]
<form method="post" class="login-f" action="">
					<input type="text" name="login_name" class="input-l" id="login_name" placeholder="�����...">
					<input type="password" name="login_password" class="input-p" id="login_password" placeholder="������...">
					<input class="fbutton-enter" onclick="submit();" name="image" type="submit" value="����" alt="Login">
					<input name="login" type="hidden" id="login" value="submit">
					<div class="clear"></div>
					<a href="/index.php?do=register" class="btn-register">�����������</a>
					<a class="inf-pass" href="/index.php?do=lostpassword">������ ������?</a>
</form>	[/group]