$.fn.Button=function(sel)
{
	var closed=true,
		th=this;
	$(sel).hide();
	$(this).removeClass('selected').click(function(){
		$(sel).toggle("fast");
		$(this).toggleClass("selected");
		closed=!closed;
		return false;
	});
	$(document).click(function(e){
		if(closed)
			return;
		var target=e.target||e.srcElement;
		while(target)
		{
			var ret=false;
			$(sel).each(function(){
				if(ret=target==this)
					return false;
			});
			if(ret)
				return;
			target=target.parentNode;
		}
		$(sel).hide('fast');
		$(th).removeClass('selected');
		closed=true;
	});
	return this;
}

$.fn.UlMenu=function()
{
	$.each(this,function(){
	$("li.submenu",this).hide();
		$("li:has(.sublnk)",this).click(function(){
			$(this).toggleClass("selected").next("li.submenu").slideToggle(300).css("display",function(){
					if($(this).css("display")=="list-item")
				return "block";
			});
		});
	});
return this;
}

$(function() {

	$( "#logindialog" ).dialog({
		autoOpen: false,
		width: 300
	});

	$('#loginlink').click(function(){
		$('#logindialog').dialog('open');
		return false;
	});
});

$(document).ready(function(){
	var tabContainers = $('#tabbs .tabcont');
		tabContainers.hide().filter(':first').show();
								
		$('#tabbs .tabmenu a').click(function () {
			tabContainers.hide();
			tabContainers.filter(this.hash).show();
			$('#tabbs .tabmenu a').removeClass('selected');
			$(this).addClass('selected');
			return false;
		}).filter(':first').click();
});

function getBrowserInfo() {
     var t,v = undefined;
     if (window.chrome) t = 'Chrome';
     else if (window.opera) t = 'Opera';
     else if (document.all) {
         t = 'IE';
         var nv = navigator.appVersion;
         var s = nv.indexOf('MSIE')+5;
         v = nv.substring(s,s+1);
     } 
     else if (navigator.appName) t = 'Netscape';
     
     return {type:t,version:v};
 }

 function addbook(a){
     var url = window.document.location;
     var title = window.document.title;
     var b = getBrowserInfo();
     
     if (b.type == 'IE' && 8 >= b.version && b.version >= 4) window.external.AddFavorite(url,title);
     else if (b.type == 'Opera') {
         a.href = url;
         a.rel = "sidebar";
         a.title = url+','+title;
         return true;
     }
     else if (b.type == "Netscape") window.sidebar.addPanel(title,url,"");
     else alert("Нажмите CTRL-D, чтобы добавить страницу в закладки.");
     return false;
 } 



