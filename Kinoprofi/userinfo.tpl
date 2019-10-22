<div class="decor">
    <h2>Личный кабинет</h2><br>
	<img src="{foto}" alt="" style="float: right;margin: 0 0 10px 10px;">
	<b>Ник</b>: <b>{usertitle}</b>
	 [not-logged] [ {edituser} ] [/not-logged] <br />

	<b>Группа</b>: Посетители <br /><br />
	<b>Всего комментариев</b>: {comm-num} [ {comments} ]<br />
	<b>Дата регистрации</b>: {registration} <br />
	<b>Последнее посещение</b>: {lastdate} <br />

	<br />
	<br />

	<span class="fbutton">{email}</span>
	[not-group=5]<span class="fbutton">{pm}</span>[/not-group]
	

	<br />

	[not-logged]
	<div id="options" style="display:none;">
		<br /><br />
		<h2 class="heading">Редактирование профиля</h2>
        <table class="tableform">
            <tr>
                <td class="label">Ваше Имя:</td>
                <td><input type="text" name="fullname" value="" class="f_input" /></td>
            </tr>
            <tr>
                <td class="label">Ваш E-Mail:</td>
                <td><input type="text" name="email" value="{editmail}" class="f_input" /><br />
                    <div class="checkbox"><input type="checkbox" name="allow_mail" value="1"  /> Не получать письма от других</div>
                    <div class="checkbox"><input type="checkbox" id="subscribe" name="subscribe" value="1" /> <label for="subscribe">Отписаться от подписанных новостей</label></div></td>
            </tr>
            <tr>
                <td class="label">Место жительства:</td>
                <td><input type="text" name="land" value="{land}" class="f_input" /></td>
            </tr>
            <tr>
                <td class="label">Список игнорируемых:</td>
                <td>{ignore-list}</td>
            </tr>
            <tr>
                <td class="label">Старый пароль:</td>
                <td><input type="password" name="altpass" class="f_input" /></td>
            </tr>
            <tr>
                <td class="label">Новый пароль:</td>
                <td><input type="password" name="password1" class="f_input" /></td>
            </tr>
            <tr>
                <td class="label">Повторите:</td>
                <td><input type="password" name="password2" class="f_input" /></td>
            </tr>
            <tr>
                <td class="label" valign="top">Блокировка по IP:<br />Ваш IP: {ip}</td>
                <td>
                    <div><textarea name="allowed_ip" style="width:98%;" rows="5" class="f_textarea">{allowed-ip}</textarea></div>
                    <div>
                <span class="small pink">
                * Внимание! Будьте бдительны при изменении данной настройки.
                Доступ к Вашему аккаунту будет доступен только с того IP-адреса или подсети, который Вы укажете.
                Вы можете указать несколько IP адресов, по одному адресу на каждую строчку.
                <br />
                Пример: 192.48.25.71 или 129.42.*.*</span>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="label">Аватар:</td>
                <td>Загрузить с комьютера: <input type="file" name="image" class="f_input" /><br /><br />
                    Сервис <a href="http://www.gravatar.com/" target="_blank">Gravatar</a>: <input type="text" name="gravatar" value="" class="f_input" /> (Укажите E-mail на данном сервисе)
                    <br /><br /><div class="checkbox"><input type="checkbox" name="del_foto" id="del_foto" value="yes" /> <label for="del_foto">Удалить аватар</label></div>
                </td>
            </tr>
            <tr>
                <td class="label">Часовой пояс:</td>
                <td>{timezones}</td>
            </tr>
            <tr>
                <td class="label">О себе:</td>
                <td><textarea name="info" style="width:98%;" rows="5" class="f_textarea">{editinfo}</textarea></td>
            </tr>
            <tr>
                <td class="label">Подпись:</td>
                <td><textarea name="signature" style="width:98%;" rows="5" class="f_textarea">Не заполняйте данное поле, т.к. для Вашей группы запрещено использование подписи в комментариях.</textarea></td>
            </tr>
			<tr>
				<td class="label"></td>
				<td>{news-subscribe}</td>
			</tr>
			<tr>
				<td class="label"></td>
				<td>{comments-reply-subscribe}</td>
			</tr>
			<tr>
				<td class="label"></td>
				<td>{unsubscribe}</td>
			</tr> 
			<tr>
				<td class="label"></td>
				<td>{twofactor-auth}</td>
			</tr>
        </table>
        <div class="fieldsubmit">
            <input class="fbutton" type="submit" name="submit" value="Отправить" />
            <input name="submit" type="hidden" id="submit" value="submit" />
        </div>
		<br />
	</div>
	
</div>
[/not-logged]