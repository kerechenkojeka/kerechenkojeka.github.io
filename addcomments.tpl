<div class="registration-form" style="margin-top:20px;">
	<div class="registration-form__title">Добавить комментарий</div>
	<div class="registration-form__wrapper">
		[not-logged]
		<div class="registration-form__field">
			<input placeholder="Ваше имя" type="text" name="name" id="name" value="" size="20" style="width:100%" maxlength="25">
		</div>
		<div class="registration-form__field">
		    <input placeholder="Ваш e-mail" type="email" name="mail" id="mail" size="20" style="width:100%;" value="" maxlength="50">
		</div>
		[/not-logged]
		<div class="registration-form__field">
			{editor}
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
			<input placeholder="Ответ на вопорос" type="text" name="question_answer" id="question_answer" value="" size="20" style="padding-left:10px;" maxlength="25">
		</div>
		[/question]
		[sec_code]
		<div class="registration-form__field" style="min-height: 90px;">
			{sec_code}
			<input placeholder="Повторите код" style="max-width:170px; float: left; padding-left:10px;" type="text" name="sec_code" id="sec_code" required>
		</div>
		<div class="clr"></div>
		[/sec_code]
		<button type="submit" name="submit" class="button_blue registration-form__submit">Отправить</button>
	</div>
</div>