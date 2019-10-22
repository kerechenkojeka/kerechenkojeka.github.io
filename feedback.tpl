<div class="registration-form">
	<h1 class="registration-form__title" style="background-image:none; padding-left:5px;">Обратная связь</h1>
	<div class="registration-form__wrapper">
	    [not-logged]
		<div class="registration-form__field">
		    <input type="text" name="name" id="name" value="" size="20" style="width:100%" maxlength="25" placeholder="Ваше имя *" required>
		</div>
		<div class="registration-form__field">
		    <input type="email" name="email" id="email" size="20" style="width:100%;" value="" maxlength="50" placeholder="E-Mail адрес *" required>
		</div>
		[/not-logged]
		<div class="registration-form__avatar" style="margin-bottom:10px;">
			<div class="registration-form__avatar-title">Получатель</div>
			<div class="registration-form__avatar-wrapper">{recipient}</div>
		</div>
		<div class="registration-form__field">
			<textarea placeholder="Сообщение *" name="message" id="message" rows="8" required></textarea>
		</div>
		[attachments]
		<div class="registration-form__avatar">
			<div class="registration-form__avatar-title">Прикрепить файлы</div>
			<div class="registration-form__avatar-wrapper"><input name="attachments[]" type="file" multiple></div>
		</div>
		[/attachments]
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
			<input placeholder="Ответ на вопорос *" type="text" name="question_answer" id="question_answer" value="" size="20" style="padding-left:10px;" maxlength="25" required>
		</div>
		[/question]
		[sec_code]
		<div class="registration-form__field" style="min-height: 90px;">
			{code}
			<input placeholder="Повторите код *" style="max-width:170px; float: left; padding-left:10px;" type="text" name="sec_code" id="sec_code" required>
		</div>
		<div class="clr"></div>
		[/sec_code]
		<button style="margin-top: 10px;" type="submit" name="send_btn" class="button_blue registration-form__submit">Отправить сообщение</button>
	</div>
</div>