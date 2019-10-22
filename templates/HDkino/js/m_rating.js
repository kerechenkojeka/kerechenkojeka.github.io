var alert_timeout = null;

function showAlert(msg){
	clearInterval(alert_timeout);
	$(".m-error").remove();
	$('.m-rating-area').append('<div class="m-error"/>');
	$(".m-error").html(msg).fadeIn(200);
	alert_timeout = setTimeout(function(){$(".m-error").fadeOut(500,function(){$(this).remove()})},1000);
	return false;
}

$(document).on("mouseenter",".m-rating li",function(){
	var m_index = $(this).index()+1;
	$(this).parent().find('li').each(function(i){
		if(m_index>i) $(this).addClass('m-hover');
	});
}).on("mouseleave",".m-rating li",function(){
	$(this).parent().find('li').removeClass('m-hover');
}).on("click",".m-rating li",function(){
	$(".m-rating-rate").addClass('m-load');
	var m_index = $(this).index()+1;
	var $this = $(this).parent();
	$.get(dle_root+"engine/ajax/m_rating.php",{news_id:$('.m-rating-area').data('id'),area:$this.data('area'),go_rate:m_index},function(d){
		$(".m-rating-rate").removeClass('m-load');
		if(d.error) showAlert(d.error);
		else $('.m-rating-area').html(d.html);
	},"json");
});