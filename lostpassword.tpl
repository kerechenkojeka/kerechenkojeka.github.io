<div class="registration-form">
	<h1 class="registration-form__title" style="background-image:none; padding-left:5px;">Восстановление пароля</h1>
	<div class="registration-form__wrapper">
		<div class="registration-form__field ic_login-gray">
		    <input type="text" name="lostname" id="lostname" value="" size="20" style="width:100%" maxlength="25" placeholder="Логин или E-mail *" required>
		</div>
		[recaptcha]
		<div class="registration-form__captcha">
			<div class="registration-form__captcha-title ic_alert">Код безопасности*</div>
			<div class="recaptcha-wrapper normal">
				<div class="recaptcha-wrapper normal">
					{recaptcha}
				</div>
			</div>
		</div>
		[/recaptcha]
		[sec_code]
		<div class="registration-form__field" style="min-height: 90px;">
			{code}
			<input placeholder="Повторите код *" style="max-width:170px; float: left; padding-left:10px;" type="text" name="sec_code" id="sec_code" required>
		</div>
		<div class="clr"></div>
		[/sec_code]
		<button style="margin-top: 10px;" type="submit" name="submit" class="button_blue registration-form__submit">Восстановить</button>
	</div>
</div>