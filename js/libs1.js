// Add slideup & fadein animation to dropdown
   $('.dropdown').on('show.bs.dropdown', function(e){
      var $dropdown = $(this).find('.dropdown-menu');
      var orig_margin_top = parseInt($dropdown.css('margin-top'));
      $dropdown.css({'margin-top': (orig_margin_top + 10) + 'px', opacity: 0}).animate({'margin-top': orig_margin_top + 'px', opacity: 1}, 300, function(){
         $(this).css({'margin-top':''});
      });
   });
   // Add slidedown & fadeout animation to dropdown
   $('.dropdown').on('hide.bs.dropdown', function(e){
      var $dropdown = $(this).find('.dropdown-menu');
      var orig_margin_top = parseInt($dropdown.css('margin-top'));
      $dropdown.css({'margin-top': orig_margin_top + 'px', opacity: 1, display: 'block'}).animate({'margin-top': (orig_margin_top + 10) + 'px', opacity: 0}, 300, function(){
         $(this).css({'margin-top':'', display:''});
      });
   });
   

$("#trailer").on('hidden.bs.modal', function (e) { 
 $("#trailer iframe").attr("src", $("#trailer iframe").attr("src"));
});

$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
  var iframe = $(e.relatedTarget.hash).find('iframe'); 
  var src = iframe.attr('src');
  iframe.attr('src', '');
  iframe.attr('src', src);
});

$(document).ready(function() {
	var owl = $("#owl-slider");
		owl.owlCarousel({
			autoPlay: 5000,
			stopOnHover: true,
			pagination:true,
			itemsCustom : [
				[0, 1],
				[468, 2],
				[600, 2],
				[768, 3],
				[992, 5],
				[1200, 5],
				[1400, 5],
				[1600, 5]
			],
			navigation : true,
			navigationText: [
				"<i class='fa fa-angle-left'></i>",
				"<i class='fa fa-angle-right'></i>"
			],
		}); 
});

$(document).ready(function() {
	var owl = $("#owl-related, #owl-cat1, #owl-cat2, #owl-cat3, #owl-cat4");
		owl.owlCarousel({
			stopOnHover: true,
			pagination:true,
			itemsCustom : [
				[0, 1],
				[468, 2],
				[600, 2],
				[768, 3],
				[992, 4],
				[1200, 4],
				[1400, 4],
				[1600, 4]
			],
			navigation : true,
			navigationText: [
				"<i class='fa fa-angle-left'></i>",
				"<i class='fa fa-angle-right'></i>"
			],
		}); 
});

$(document).ready(function() {
	var owl = $("#owl-trailer");
		owl.owlCarousel({
			stopOnHover: true,
			pagination:false,
			itemsCustom : [
				[0, 1],
				[450, 2],
				[600, 2],
				[768, 1],
				[992, 1],
				[1200, 1],
				[1400, 1],
				[1600, 1]
			],
			navigation : true,
			navigationText: [
				"<i class='fa fa-angle-left'></i>",
				"<i class='fa fa-angle-right'></i>"
			],
		}); 
});

$(document).ready(function() {
	var owl = $("#owl-random");
		owl.owlCarousel({
			stopOnHover: true,
			pagination:true,
			itemsCustom : [
				[0, 1],
				[450, 2],
				[600, 2],
				[768, 3],
				[992, 1],
				[1200, 1],
				[1400, 1],
				[1600, 1]
			],
			navigation : false,
			navigationText: [
				"<i class='fa fa-angle-left'></i>",
				"<i class='fa fa-angle-right'></i>"
			],
		}); 
});


$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

$(document).ready(function(){
$(window).scroll(function () {if ($(this).scrollTop() > 0) {$('#scroller').fadeIn();} else {$('#scroller').fadeOut();}});
$('#scroller').click(function () {$('body,html').animate({scrollTop: 0}, 400); return false;});
});

$(document).ready(function(){
	$('.sociallogin a').on('click',function(){
	   var href = $(this).attr('href');
       var width  = 820;
       var height = 420;
       var left   = (screen.width  - width)/2;
       var top   = (screen.height - height)/2-100;   

       auth_window = window.open(href, 'auth_window', "width="+width+",height="+height+",top="+top+",left="+left+"menubar=no,resizable=no,scrollbars=no,status=no,toolbar=no");
       return false;
	})
});