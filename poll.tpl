<div class="block_grey">
	<h4 class="title">{question}</h4>
	<div class="vote_more"><a href="#" onclick="ShowAllVotes(); return false;">[Другие опросы]</a></div>
		<div class="vote_list">
			{list}
		</div>
	[voted]
		<div class="vote_votes grey">Проголосовало: {votes}</div>
	[/voted]
	[not-voted]<br><center>
		<button class="btn btn-white" type="submit" onclick="doPoll('vote', '{news-id}'); return false;" ><b>Голосовать</b></button>
		<button class="btn-border" type="button" onclick="doPoll('results', '{news-id}'); return false;"><b>Результаты опроса</b></button>
    </center>[/not-voted]
</div>