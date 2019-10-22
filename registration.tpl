<div class="registration-form">
	<h1 class="registration-form__title">[registration]Регистрация[/registration][validation]Продолжение регистрации[/validation]</h1>
	<div class="registration-form__accept-rules" style="padding: 0; margin-bottom: 15px;">
	[registration]
		Регистрация на нашем сайте позволит Вам быть его полноценным участником.
		Вы сможете добавлять новости на сайт, оставлять свои комментарии, просматривать скрытый текст и многое другое.
		<br>В случае возникновения проблем с регистрацией, обратитесь к <a href="/index.php?do=feedback">администратору</a> сайта.
	[/registration]
	[validation]
		Ваш аккаунт был зарегистрирован на нашем сайте,
		однако информация о Вас является неполной, поэтому ОБЯЗАТЕЛЬНО заполните дополнительные поля в Вашем профиле.<br>
	[/validation]
	</div>
	<div class="registration-form__wrapper">
	    [registration]
		<div class="registration-form__field">
		    <input type="text" name="name" id="name" value="" size="20" style="width:100%" maxlength="25" placeholder="Логин *" required>
		</div>
		<div class="registration-form__field">
		    <input type="email" name="email" id="email" size="20" style="width:100%;" value="" maxlength="50" placeholder="E-Mail адрес *" required>
		</div>
		<div class="registration-form__field">
		    <input type="password" name="password1" id="password1" size="20" style="width:100%" maxlength="32" placeholder="Пароль *" required>
		</div>
		<div class="registration-form__field">
		    <input type="password" name="password2" id="password2" size="20" style="width:100%" maxlength="32" placeholder="Пароль (подтверждение) *" required>
		</div>
		[recaptcha]
		<div class="registration-form__captcha">
			<div class="registration-form__captcha-title">Код безопасности*</div>
			<div class="recaptcha-wrapper normal">
				<div class="recaptcha-wrapper normal">
					{recaptcha}
				</div>
			</div>
		</div>
		[/recaptcha]
		[question]
		<div class="registration-form__field">
			{question}<br>
			<input placeholder="Ответ на вопорос" type="text" name="question_answer" id="question_answer" value="" size="20" style="padding-left:10px;" maxlength="25" required>
		</div>
		[/question]
		[sec_code]
		<div class="registration-form__field" style="min-height: 90px;">
			{reg_code}
			<input placeholder="Повторите код" style="max-width:170px; float: left; padding-left:10px;" type="text" name="sec_code" id="sec_code" required>
		</div>
		<div class="clr"></div>
		[/sec_code]
		[/registration]
		[validation]
		<div class="registration-form__field">
		    <input type="text" id="fullname" name="fullname" size="20" style="width:100%;" value="" maxlength="35" placeholder="Ваше имя">
		</div>
		<div class="registration-form__field">
		    <input type="text" id="land" name="land" size="20" style="width:100%;" value="" maxlength="35" placeholder="Место жительства">
		</div>
		<div class="registration-form__field">
		    <div class="registration-form__avatar-title">О себе</div>
			<textarea id="info" name="info" rows="5"></textarea>
		</div>
		<div class="registration-form__avatar">
			<div class="registration-form__avatar-title">Аватар</div>
			<div class="registration-form__avatar-wrapper"><input type="file" id="image" name="image"></div>
		</div>
		<table class="xfields">
			{xfields}
		</table>
		[/validation]
		<button style="margin-top: 10px;" name="submit" type="submit" class="button_blue registration-form__submit">Зарегистрироваться</button>
	</div>
	<div class="registration-form__accept-rules">
		Нажимая кнопку «Зарегистрироваться», Вы принимаете общие <a href="/rules.html" rel="nofollow" target="_blank">правила сайта</a> и соглашаетесь на обработку Ваших персональных данных.
	</div>
</div>