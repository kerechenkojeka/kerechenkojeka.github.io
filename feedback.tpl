<div class="decor">
<h1>Обратная связь</h1><br>
		<table class="tableform">
		
			<tbody><tr>
				<td class="label" width="100">
					Ваше имя:<span class="impot">*</span>
				</td>
				<td><input type="text" maxlength="35" name="name" class="f_input"></td>
			</tr>
			<tr>
				<td class="label">
					Ваш E-Mail:<span class="impot">*</span>
				</td>
				<td><input type="text" maxlength="35" name="email" class="f_input"></td>
			</tr>
		
			<tr>
				<td class="label">
					Кому:<span class="impot">*</span>
				</td>
				<td>{recipient}</td>
			</tr>
			<tr>
				<td class="label">
					Тема:<span class="impot">*</span>
				</td>
				<td><input type="text" maxlength="45" name="subject" style="width: 170px" class="f_input"></td>
			</tr>
			<tr>
				<td class="label" valign="top">
					Сообщение:
				</td>
				<td><textarea name="message" style="width: 90%; height: 160px" class="f_textarea"></textarea></td>
			</tr>
			[attachments]
			<tr>
				<td class="label">Прикрепить файлы:</td>
				<td><input name="attachments[]" type="file" multiple></td>
			</tr>
			[/attachments]
			<tr>
				<td style="vertical-align:top" class="label">
					Введите код:<span class="impot">*</span>
				</td>
				<td>
					<div>{code}</div>
					<div><input type="text" maxlength="45" name="sec_code" style="width:115px" class="f_input"></div>
				</td>
			</tr>
		</tbody></table>
		<div class="fieldsubmit">
			<button name="send_btn" class="fbutton" type="submit"><span>Отправить</span></button>
		</div>
</div>