<div class="padding_border">
<b>[inbox]Входящие сообщения[/inbox]| [outbox]Отправленные сообщения[/outbox] | [new_pm]Отправить сообщение[/new_pm]</b><br>
<br>
[pmlist]
{pmlist}
[/pmlist]
</div>
[newpm]
<br />
<div class="brdform">
	<div class="baseform">
		<table class="tableform">
			<tr>
				<td class="label">
					Кому:
				</td>
				<td><input type="text" name="name" value="{author}" class="f_input" /></td>
			</tr>
			<tr>
				<td class="label">
					Тема:<span class="impot">*</span>
				</td>
				<td><input type="text" name="subj" value="{subj}" class="f_input" /></td>
			</tr>
			<tr>
				<td class="label">
					Сообщение:<span class="impot">*</span>
				</td>
				<td class="editorcomm">
				{editor}<br />
				<div class="checkbox"><input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> <label for="outboxcopy">Сохранить сообщение в папке "Отправленные"</label></div>
				</td>
			</tr>
			[sec_code]
			<tr>
				<td class="label">
					Enter code:<span class="impot">*</span>
				</td>
				<td>
					<div>{sec_code}</div>
					<div><input type="text" name="sec_code" id="sec_code" style="width:115px" class="f_input" /></div>
				</td>
			</tr>
			[/sec_code]
			[recaptcha]
			<tr>
				<td class="label">
					Введите два слова, показанных на изображении: <span class="impot">*</span>
				</td>
				<td>
					<div>{recaptcha}</div>
				</td>
			</tr>
			[/recaptcha]
			[question]
				<tr>
					<td class="label">
						Вопрос:
					</td>
					<td>
						<div>{question}</div>
					</td>
				</tr>
				<tr>
					<td class="label">
						Ответ:<span class="impot">*</span>
					</td>
					<td>
						<div><input type="text" name="question_answer" id="question_answer" class="f_input" /></div>
					</td>
				</tr>
			[/question]
		</table>
		<div class="fieldsubmit">
			<button type="submit" name="add" class="fbutton"><span>Отправить</span></button>
			<input type="button" class="fbutton" onclick="dlePMPreview()" title="Просмотр" value="Просмотр" />
		</div>	
	</div>
</div>
[/newpm]
[readpm]
<div class="basecont">
	<div class="bcomment">
		<div class="lcol">
			<span class="thide arcom">&lt;</span>
			<div class="avatar"><img src="{foto}" alt=""/></div>
			<h5>{author}</h5>
			<p>{date}</p>
		</div>
		<div class="rcol">
			<div class="combox">
				<script type="text/javascript">//<![CDATA[
				$(function(){ $("#pinfb").Button("#pinfc"); });
				//]]></script>
				<div class="infbtn">
					<span id="pinfb" class="thide" title="Информация к новости">Информация к новости</span>
					<div id="pinfc" class="infcont">
						<ul>
							<li><i>Группа: {group-name}</i></li>
							<li><i>Регистрация: {registration}</i></li>
							<li><i>Публикаций: {news-num}</i></li>
							<li><i>Комментариев: {comm-num}</i></li>
						</ul>
					</div>
				</div>
				<h3 style="margin-bottom: 0.4em;">[reply]{subj}[/reply]</h3>
				{text}
				[signature]<br clear="all" /><div class="signature">--------------------</div><div class="slink">{signature}</div><br />[/signature]
				<div class="comedit">
					<span class="argreply">[reply]<b>Ответить</b>[/reply]</span>
					<span class="arg">[complaint]Пожаловаться[/complaint]</span>
					<span class="arg">[ignore]Игнорировать[/ignore]</span>
					<span class="arg">[del]Удалить[/del]</span>
					<div class="clr"></div>
				</div>
			</div>
		</div>
		<div class="clr"></div>
	</div>
</div>
[/readpm]