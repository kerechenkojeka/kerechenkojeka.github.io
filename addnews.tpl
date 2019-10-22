<link rel="stylesheet" type="text/css" href="engine/skins/chosen/chosen.css"/>
<script type="text/javascript" src="engine/skins/chosen/chosen.js"></script>
<script type="text/javascript"> 
$(function(){
	$('#category').chosen({allow_single_deselect:true, no_results_text: 'Ничего не найдено'});
});
</script>
<div class="full-story"> 
	<h1 class="post_title">Добавление новой публикации на сайте</h1>
	<table class="fulltable">
	
	<tr>
<td>Парсер Кино Поиск:</td>
<td><input class="f_input" type="text" style="width:350px;" name="film_title" id="film_title" onkeypress="clickButton(event);">  <input class="btn btn-danger btn-small" type="button" onClick="films_kino_poisk('search'); return false;" style="width:160px;" value="Найти фильм" title="Введите название фильма или ID Кино Поиска. После чего нажмите кнопку Найти фильм."><div id="kino_parser_status"></div><div id="kino_parser_info"></div></td>
</tr>

<tr>
<td>ID Кино Поиск:</td>
<td><input type="text" name="pspvolt_id" id="pspvolt_id" onkeypress="clickButton(event);" style="width:100px;" class="f_input"></td>
</tr>
	
		<tr>
			<td class="sline">Заголовок: <span class="import">*</span></td>
			<td><input type="text" name="title" value="{title}" class="input1" id="title"/>
                            <input class="bbcodes find_rel" title="Найти похожие новости" onclick="find_relates(); return false;" type="button" value="Найти похожие" /><span id="related_news"></span></td>
		</tr>

		[urltag]
		<tr>
			<td class="sline">URL статьи:</td>
			<td><input type="text" name="alt_name" value="{alt-name}" class="input1"/></td>
		</tr>
		[/urltag]
		<tr>
			<td class="sline">Категория: <span class="import">*</span></td>
			<td>{category}</td>
		</tr>
		<tr>
			<td class="sline">&nbsp;</td>
			<td><a href="#" onclick="$('.addvote').toggle();return false;" class="bbcodes">Добавить опрос</a></td>
		</tr>
		<tr  class="addvote" style="display:none;" >
			<td class="sline">Заголовок опроса:</td>
			<td><input type="text" name="vote_title" value="{votetitle}" maxlength="150" class="input1" /></td>
		</tr>
		<tr  class="addvote" style="display:none;" >
			<td class="sline">Вопрос:</td>
			<td><input type="text" name="frage" value="{frage}" maxlength="150" class="input1" /></td>
  		</tr>
		<tr  class="addvote" style="display:none;" >
			<td class="sline">Варианты ответов:<br /><br />Каждая новая строка является новым вариантом ответа</td>
			<td><textarea name="vote_body" rows="10" class="f_textarea" >{votebody}</textarea><br /><input type="checkbox" name="allow_m_vote" value="1" {allowmvote}> Разрешить выбор нескольких вариантов
            </td>
   		</tr>
   		<tr>
    		<td colspan="2">Краткая новость:<span class="import">*</span>
    		[not-wysywyg]
    			<div class="bb-editor">
    				{bbcode}
    				<textarea name="short_story" id="short_story" onfocus="setFieldName(this.name)" rows="15" cols="" class="f_textarea" >{short-story}</textarea>
    			</div>
    		[/not-wysywyg]
    		{shortarea}
    		</td>
   		</tr>
   		<tr>
    	
   	
        {xfields}
   			[question]
   		<tr>
    		<td class="sline">Вопрос:</td>
    		<td>{question}</td>
   		</tr>
   		<tr>
    		<td class="sline">Ответ:</td>
    		<td><input type="text" name="question_answer" id="question_answer" class="f_input" /></td>
   		</tr>
   		[/question]
        
        
   		[sec_code]
   		<tr>
    		<td class="sline">Код:</td>
    		<td>{sec_code}</td>
   		</tr>
   		<tr>
    		<td class="sline">ведите код:</td>
    		<td><input class="input3" maxlength="45" name="sec_code" colls="" size="14"/></td>
   		</tr>
   		[/sec_code]
   		[recaptcha]
   		<tr>
    		<td colspan="2">
     		Введите два слова, показанных на изображении:<br/>
     		{recaptcha}
    		</td>
   		</tr>
   		[/recaptcha]
   		<tr>
    		<td colspan="2">
    		{admintag}
    		</td>
   		</tr>
   		<tr>
    		<td colspan="2">
    			<button class="dark_button site_button" type="button" name="nview" onClick="preview()" value="Просмотр">Просмотр</button>
          <button class="color_button site_button" type="submit" name="add" value="Добавить"/>Добавить</button>
    		</td>
   		</tr>
	</table>
</div>