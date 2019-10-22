function orderdecs_rate(id){
	$.post(dle_root+'engine/ajax/orderdesc_rating.php',{order:id},function(data){
		if(data.msg){
			alert(data.msg);
		}else{
			if(data.rating > 0) $("#orderdesc-rating-"+id).removeAttr('class').addClass("orderdesc-rating-plus");
			$("#orderdesc-rating-"+id).html(data.rating);
		}
	},"json");
	return false;
}
$(function(){
	$("#orderdesc-table tbody tr:odd").addClass("orderdescr-tr-odd");
	$("#orderdesc-add").click(function(){
		$("#orderdesc-add-area").slideToggle(500);
		return false;
	});
})

$(document)
.on('click','#orderdesc-del-submit, .orderdesc-rating-del',function(){
	if(!confirm('Точно удалить выбранную заявку?')) return false;
})
.on('click','a.orderdesc-descr-trigger',function(){
	$(this).toggleClass("orderdesc-descr-triggered").parents('td').find("p.orderdesc-descr").slideToggle(300);
	return false;
})
.on('click','p.orderdesc-descr',function(){
	$(this).slideToggle(300).parents('td').find("a.orderdesc-descr-trigger").toggleClass("orderdesc-descr-triggered");
	return false;
})
.on('blur','#orderdesc_title',function(){
	if($(this).val().length>2){
		$.post(dle_root+'engine/ajax/orderdesc_relates.php', { title: $(this).val() }, function(data){
			$('#orderdesc_related').fadeIn(300).html(data);
		});
	}else $('#orderdesc_related').fadeOut(300);
	return false;
})
;