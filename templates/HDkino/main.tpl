<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
{headers}
<link rel="shortcut icon" href="{THEME}/images/favicon.ico" />
<link media="screen" href="{THEME}/css/styles.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/css/reset.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/css/slider.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/css/engine.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{THEME}/css/jquery-ui-1.8.7.custom.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="{THEME}/js/libs.js"></script>
<script type="text/javascript" src="{THEME}/js/jquery.cookie.js"></script>
<script type="text/javascript" src="{THEME}/js/tabs.js"></script>
<script type="text/javascript" src="{THEME}/js/tabsfull.js"></script>
<script type="text/javascript" src="{THEME}/js/owl.carousel.js"></script>
<script type="text/javascript" src="{THEME}/js/jquery.carouFredSel-5.6.4-packed.js"></script>
<script>
    $(document).ready(function() {
      $("#owl-demo").owlCarousel({
        navigation : true
      });
    });

$(function(){
 $(".butall").click(function(){
  $(".rus").show();
  $(".eng").show();
 });
 $(".butrus").click(function(){
  $(".rus").show();
  $(".eng").hide();
 });
 $(".buteng").click(function(){
  $(".rus").hide();
  $(".eng").show();
 });
})

</script>
</head>
<body>
{AJAX}
	<div id="header">
		<div class="width">
			<div class="logo-top">
				<a href="/" title="�������� ������ � ������� ������ � HD �������� ���������">
                    <img src="{THEME}/images/logo.png" alt="������� ������ ������ � HD �������� ���������" />
				</a>
			</div>
			<div class="fav-s">
                <a rel="sidebar" class="favorite-site" rel="nofollow" href="/" onclick="window.external.AddFavorite ('/', "yes");" title="������� ������ ������ � HD �������� ���������"></a>
                
			</div>
			<div class="search-select">
				<form class="tophead-search" action="" name="searchform" method="post">
                    <fieldset>
                        <span class="text">
                            <input class="reset sinput tophead-search-txt" type="text" name="story" id="header-search-input" value="�����..." onblur="if(this.value=='') this.value='�����...';" onfocus="if(this.value=='�����...') this.value='';">
                        </span>
                        <input title="�����" class="go" type="submit" value="">
                        <input type="hidden" name="do" value="search">
                        <input type="hidden" name="subaction" value="search">
                    </fieldset>
                </form>
                <div class="clear"></div>
				<div class="primer">
					��������: <span onclick="document.getElementById('header-search-input').value='������';  return false;">������</span>
				</div>
			</div>
			<!--noindex--><div class="f-login">
{login}
</div>

<!--/noindex-->
		</div>
	</div>

    <div class="bg-site">
    <div class="bg-wrapper">

	<div id="top-menu">
		<div class="width">
			<ul class="li-t-menu">
				<li><a href="/">�������</a></li>
				<li><a href="/xfsearch/year/2016/">������� 2016</a></li>
                <li><a href="/xfsearch/year/2015/">������� 2015</a></li>
				<li><a href="/xfsearch/year/2014/">������� 2014</a></li>
                <li><a href="/serialy/">�������</a></li>
				<li><a href="/multfilmy/">�����������</a></li>
				<li><a href="/rules.html">������� �����</a></li>
			</ul>
		</div>
	</div>

	<div id="wrapper">
[aviable=main]
		<div class="top-slider">
			<div class="tab-menu">
				<ul class="a-link">
					<li class="act-yelow"><a href="javascript:SwitchTab2('tab_1', 'cont_1');" id="tab_1" class="active" href="#">���-�������</a></li>
					<li><a href="javascript:SwitchTab2('tab_2', 'cont_2');" id="tab_2" class="no-active">���-��������</a></li>
					<li><a href="javascript:SwitchTab2('tab_3', 'cont_3');" id="tab_3" class="no-active">�����������</a></li>
				</ul>
				
				<div class="btn-left-right">
				</div>
			</div>
			<div class="clear"></div>
            <div id="cont_1"> 
               <div id="owl-demo" class="six-films owl-carousel owl-theme">
				{custom category="1-12,15-20" template="shortstory-2" aviable="global" from="0" limit="12" order="reads" cache="no"}
				<!-- ������� ���������� ������ �� ���������� ����������-->
                </div>
            </div>
            <div id="cont_2" style="display:none;">
                <div class="six-films">
                {custom category="14" template="shortstory-2" aviable="global" from="0" limit="12" order="reads" cache="no"}
				<!-- ������� ���������� ������� �� ���������� ����������-->
                    <div class="clear"></div>
                </div>
            </div>
            <div id="cont_3" style="display:none;">
                <div class="six-films">
                {custom category="13" template="shortstory-2" aviable="global" from="0" limit="12" order="reads" cache="no"}
				<!-- ������� ��������� ������� �� ��������� "����� �� ������"-->
                    <div class="clear"></div>
                </div>
            </div>
		</div><!--top-slider-->
[/aviable]
		<div class="main">
			<div class="left-block">
				<div class="block-cat">
					<div class="title-block-cat">
						<span>
							������
						</span>
					</div>
					
					<ul class="category">
						<li><a href="/dokumentalnye/">��������������</a></li>
				<li><a href="/katastrofa/">����������</a></li>
				<li><a href="/komediya/">�������</a></li>
				<li><a href="/boevik/">�������</a></li>
				<li><a href="/uzhasy/">�����</a></li>
				<li><a href="/fantastika/">����������</a></li>
				<li><a href="/triller/">��������</a></li>
				<li><a href="/fentezi/">�������</a></li>
				<li><a href="/melodrama/">���������</a></li>
				<li><a href="/sovetskoe-kino/">����</a></li>
				<li><a href="/detektiv/">���������</a></li>
				<li><a href="/istoricheskie/">������������</a></li>
				<li><a href="/drama/">�����</a></li>
				<li><a href="/multfilmy/">�����������</a></li>
                        
                        <div class="clear"></div>
					</ul>
				</div><!--block-zhanr-->
                <br/>
				<div class="block-cat">
					<div class="title-block-cat">
						<span>
							�������
						</span>
					</div>
					
					<ul class="category">
<li><a href="/tags/������/">������</a></li>
				<li><a href="/tags/��������/">��������</a></li>
				<li><a href="/tags/��������������/">��������������</a></li>
				<li><a href="/tags/�����/">�����</a></li>
				<li><a href="/tags/������������/">������������</a></li>
				<li><a href="/tags/�������/">�������</a></li>
				<li><a href="/tags/���������/">���������</a></li>
				<li><a href="/tags/�������/">�������</a></li>
				<li><a href="/tags/�����/">�����</a></li>
				<li><a href="/tags/����������/">����������</a></li>
				<li><a href="/tags/�������/">�������</a></li>
                        
                        <div class="clear"></div>
					</ul>
				</div><!--block-zhanr-->
                
                <div class="clear"></div>
				
				<div class="top-random">
					<div class="title-top-random">
						<span>���������� �� �����</span>
					</div>
					<div class="random-f">
					{topnews}
					<div class="clear"></div>
					</div><!--random f-->

				</div><!--top-random-->

				</div>
            
			</div><!--left block-->

			<!-------------------->

			<div class="content">
[aviable=main]
            <div class="color-hr"></div>
			
				<div class="top-txt">
                <h1>����� ���������� �� ���� </h1>
<div>
 �� ����� ����� �� ������� �������� ������ ����� ������ ������ � ������� ���������� ���������, ��� ��� � ������� �����������.  ��� ���������� �������� ������� ����� ������� ����������� � ����������� ������������. �����, � ��� ������� ������� ��������� ������������� � ���������� ������������ � Hd ��������.  ��� ���� ����������� � ����������� ������� ����� ������ ����! 7 ���� � ������, 24 ���� � �����!
��� ����� ������ �������� ��, ��� �� ������� ��� ��� ���� ������� �������, ������� �� ����� ������ �������� ������ ��.
<br/>����������� ����, �������� ��� ��� ����� � � ��������� ����� ������������ ��� ����� ��� ������ �� ��������� �������! �, ���� �� ����� �������, �� �� ������ ���������� ����� ���� ����� �� ����� �����������, �� ������ �������� ��� � <a href="/index.php?do=orderdesc">����� �������</a> �������. ������ �������, ��� ����� ����� �������� � ���������� �����, � �� � ��������� ������!   
</div>
				</div>
                <!--top-txt-->
            
					<div class="clear"></div>

<div class="date-serials">
  <span>����� ������</span>
</div>
{custom category="1-12,15-29" template="shortstory" aviable="global" from="0" limit="12" order="date" cache="no"}
<!-- ������� ID ��������� ������� ��������� � ���������� � �������� -->
<div style="clear:both; float:none;"></div>

<div class="date-serials">
  <span>�������</span>
</div>
{custom category="14" template="shortstory" aviable="global" from="0" limit="12" order="date" cache="no"}
<!-- ������� ID ��������� ������� ��������� � ���������� � ��������� -->
<div style="clear:both; float:none;"></div>

<div class="date-serials">
  <span>�����������</span>
</div>
{custom category="13" template="shortstory" aviable="global" from="0" limit="12" order="date" cache="no"}
<!-- ������� ID ��������� ������� ��������� � ���������� � ������������� -->
<div style="clear:both; float:none;"></div>
[/aviable]
[aviable=showfull]
<div class="clear"></div>
{speedbar}
<div class="clear"></div>
[/aviable]
[not-aviable=main]
{info}
{content}
[/not-aviable]
               <!--content-->
		</div><!--main--> 
		
	</div>
	
	<div class="clear"></div>
<!--noindex-->	
	<div id="top-menu2">
		<div class="width">
			<ul class="li-t-menu">
				<li><a href="/">�������</a></li>
				<li><a href="/xfsearch/year/2016/">������� 2016</a></li>
                <li><a href="/xfsearch/year/2015/">������� 2015</a></li>
				<li><a href="/xfsearch/year/2014/">������� 2014</a></li>
                <li><a href="/serialy/">�������</a></li>
				<li><a href="/multfilmy/">�����������</a></li>
				<li><a href="/rules.html">������� �����</a></li>
				<li><a href="/index.php?do=feedback">��������</a></li>
			</ul>
		</div>
	</div>
<!--/noindex-->
<!--noindex-->	[aviable=cat|main]{include file="engine/modules/catface.php"}[/aviable]
	<div id="footer">
	
		<div class="logo-f">
			<img src="{THEME}/images/logo-footer.png" alt="�������� ������ � HD �������� ������" />
		</div>
		<div class="copyright">
			Copyright � 2016, <a href="/">������ ������</a>  ��� ����� ��������.
			<br/>
			����������� ���������� ����������� �� �����, ��� ����������� ���������� ������������� ������ ���������
<br/>
<b class="warn" style="color:red;">��������. ��� ���������� �� ����� ����� � �������� ����������. ������������� ��������������� �� �����.</b>
		</div>
<!--/noindex-->
		<div class="couter">
		<img src="{THEME}/images/count.png" alt="�������� ������ � HD �������� ������" />
		</div>
		
		<div class="clear"></div>
	</div>
    </div><!--bg wrapper-->
    </div><!--bg site-->
    <script>
 $(document).ready(function(){
$(".title-block-cat" ).css( "padding-left", "4px" );
});
    </script>
</body>
</html>