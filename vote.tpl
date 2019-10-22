	<h4 class="title"><b>{title}</b></h4>
	[votelist]
	<form method="post" name="vote">
	[/votelist]
		<div class="vote_list">
			{list}
		</div>
	[voteresult]
		<div class="vote_votes grey">Проголосовало: {votes}</div>
	[/voteresult]
	[votelist]
		<input type="hidden" name="vote_action" value="vote">
		<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}">
		<button title="Голосовать" class="btn btn-white" type="submit" onclick="doVote('vote'); return false;" style="padding: 6px 13px 7px;">Голосовать</button>
		<button title="Результаты опроса" class="btn btn-border" type="button" onclick="doVote('results'); return false;" style="padding: 6px 13px 7px;">Результаты</button>
	</form>
	[/votelist]