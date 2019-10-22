<?PHP
ini_set("memory_limit", "256M");
set_time_limit (0);
#ini_set('max_execution_time', 0);
if( !defined( 'DATALIFEENGINE' ) OR !defined( 'LOGGED_IN' ) ) {die( "Hacking attempt!" );}
if( $member_id['user_group'] != 1 ) {msg( "error", $lang['index_denied'], $lang['index_denied'] );}
define ( 'ROOT_DIR', dirname ( __FILE__ ) );
require_once ENGINE_DIR . '/data/config.php';
require_once ENGINE_DIR . '/inc/simple_html_dom.php';
include_once ENGINE_DIR . '/classes/parse.class.php';
$parse = new ParseFilter( Array (), Array (), 1, 1 );

function zvHead($name) {
global $PHP_SELF;
if($name) {
$h=<<<HTML
<table width="100%"><tr><td bgcolor="#EFEFEF" height="29" style="padding-left:10px;"><div class="navigation">{$name}</div></td></tr></table><div class="unterline"></div>
HTML;
}
$a = <<<HTML
<div style="padding-top:5px;padding-bottom:2px;"><table width="100%"><tr><td></td><td style="padding:5px;" bgcolor="#FFFFFF">
{$h}
HTML;
return $a;
}
function zvFoter() {
global $PHP_SELF;
$z = <<<HTML
</td><td background="engine/skins/images/tl_rb.gif"><img src="engine/skins/images/tl_rb.gif" width="6" height="1" border="0"></td>
</tr></table></div>
HTML;
return $z;
}
function ziconv($a) {
return iconv("UTF-8", "windows-1251", $a);
}
// Локализация транслита
$langtranslit = array(
'а' => 'a', 'б' => 'b', 'в' => 'v',
'г' => 'g', 'д' => 'd', 'е' => 'e',
'ё' => 'e', 'ж' => 'zh', 'з' => 'z',
'и' => 'i', 'й' => 'y', 'к' => 'k',
'л' => 'l', 'м' => 'm', 'н' => 'n',
'о' => 'o', 'п' => 'p', 'р' => 'r',
'с' => 's', 'т' => 't', 'у' => 'u',
'ф' => 'f', 'х' => 'h', 'ц' => 'c',
'ч' => 'ch', 'ш' => 'sh', 'щ' => 'sch',
'ь' => '', 'ы' => 'y', 'ъ' => '',
'э' => 'e', 'ю' => 'yu', 'я' => 'ya',
"ї" => "yi", "є" => "ye",

'А' => 'A', 'Б' => 'B', 'В' => 'V',
'Г' => 'G', 'Д' => 'D', 'Е' => 'E',
'Ё' => 'E', 'Ж' => 'Zh', 'З' => 'Z',
'И' => 'I', 'Й' => 'Y', 'К' => 'K',
'Л' => 'L', 'М' => 'M', 'Н' => 'N',
'О' => 'O', 'П' => 'P', 'Р' => 'R',
'С' => 'S', 'Т' => 'T', 'У' => 'U',
'Ф' => 'F', 'Х' => 'H', 'Ц' => 'C',
'Ч' => 'Ch', 'Ш' => 'Sh', 'Щ' => 'Sch',
'Ь' => '', 'Ы' => 'Y', 'Ъ' => '',
'Э' => 'E', 'Ю' => 'Yu', 'Я' => 'Ya',
"Ї" => "yi", "Є" => "ye",
);
function totranslit2($var, $lower = true, $punkt = true) {
	global $langtranslit;
	
	if ( is_array($var) ) return "";

	if (!is_array ( $langtranslit ) OR !count( $langtranslit ) ) {
		$var = trim( strip_tags( $var ) );

		if ( $punkt ) $var = preg_replace( "/[^a-z0-9\_\-.]+/mi", "", $var );
		else $var = preg_replace( "/[^a-z0-9\_\-]+/mi", "", $var );

		$var = preg_replace( '#[.]+#i', '.', $var );
		$var = str_ireplace( ".php", ".ppp", $var );

		if ( $lower ) $var = strtolower( $var );

		return $var;
	}
	
	$var = trim( strip_tags( $var ) );
	$var = preg_replace( "/\s+/ms", "-", $var );
	$var = str_replace( "/", "-", $var );

	$var = strtr($var, $langtranslit);
	
	if ( $punkt ) $var = preg_replace( "/[^a-z0-9\_\-.]+/mi", "", $var );
	else $var = preg_replace( "/[^a-z0-9\_\-]+/mi", "", $var );

	$var = preg_replace( '#[\-]+#i', '-', $var );
	$var = preg_replace( '#[.]+#i', '.', $var );

	if ( $lower ) $var = strtolower( $var );

	$var = str_ireplace( ".php", "", $var );
	$var = str_ireplace( ".php", ".ppp", $var );

	if( strlen( $var ) > 200 ) {
		
		$var = substr( $var, 0, 200 );
		
		if( ($temp_max = strrpos( $var, '-' )) ) $var = substr( $var, 0, $temp_max );
	
	}
	
	return $var;
}

if( $_REQUEST['url'] == "" ) {
echoheader("", "");
echo zvHead("Вставка новостей");
$forma=<<<HTML
<form action="" enctype="multipart/form-data" method="post">
Файл с новостями:<br>
<input name="filez" type="file"><br>
ID категории:<br>
<input class="edit bk" type=text name="category" value="" size=40><br>
<input type=hidden name=url value=do>
<input type="submit" class="btn btn-success" value="&nbsp;&nbsp;Залить новости&nbsp;&nbsp;">
</form>
HTML;
echo $forma.zvFoter();
echofooter();

} elseif($_REQUEST['url'] == "do") {
echoheader("", "");
echo zvHead("Список залитых новостей");
$category_list=$_POST['category'];
$file_url=$_FILES['filez']['tmp_name']; // Заносим тимчасовий файл в змінну
$file_open = file_get_contents($file_url); // Відкриваємо його
$html = str_get_html($file_open); // Парсимо
//echo var_dump($_FILES['filez']);
//exit;

foreach($html->find('div.mynews') as $news) {
$metatitle = $news->find('div.metatitle', 0)->innertext;
$title = $news->find('div.title', 0)->innertext;
$short_story = $news->find('div.shortNews', 0)->innertext;
$full_story = $news->find('div.fullstory', 0)->innertext;
$keywords = $news->find('div.keywords', 0)->innertext;
$description = $news->find('div.description', 0)->innertext;
$alt_name = $news->find('div.alt_name', 0)->innertext;
$tags = $news->find('div.tags', 0)->innertext;
$catalog_url = $news->find('div.catalog_url', 0)->innertext;
$filename = $news->find('div.filename', 0)->innertext;
$fileurl = ROOT_DIR.'/'.$filename;
$filename = explode("/", $filename);
$filename = end($filename);
$file_prefix = time() + rand( 1, 100 ); // Префикс до назви файлу
$file_name_dir = $file_prefix.'_'.$filename; // Назва файлу на сайті

$monthes = array(
	"января" => "01",
	"февраля" => "02",
	"марта" => "03",
	"апреля" => "04",
	"мая" => "05",
	"июня" => "06",
	"июля" => "07",
	"августа" => "08",
	"сентября" => "09",
	"октября" => "10",
	"ноября" => "11",
	"декабря" => "12"
);

$i = 1;
$xfields = array();
$time = '';
while (1){
    $xf = $news->find('div.doppole'.$i, 0);
    if (!is_object($xf)) break;
    $i++;
    $name = $xf->getAttribute('id');
    $value = $xf->innertext;
    if ($name == 'time'){
        $time = explode(" ", $value);
        $time = $time[2]."-".$monthes[$time[1]]."-".$time[0]." ".$time[4];
        $time = $time.":00";
    }
    $xfields[] = $name.'|'.$value;
}
$xfields = addslashes(implode("||", $xfields));

// Копіюємо файл в папке ДЛЕ.
if(!@copy($fileurl, ROOT_DIR . "/uploads/files/" . $file_name_dir)) {
$fileurl = str_ireplace( "/", " \ ", $fileurl );
$fileurl = str_ireplace( " ", "", $fileurl );
if(@copy($fileurl, ROOT_DIR . "/uploads/files/" . $file_name_dir)) $_error='Не верный файл в папке.';
}

//echo $file_name_dir;
//exit();
$full_story = $db->safesql( $parse->BB_Parse( $parse->process( $full_story ), false ) );
$full_story = stripslashes(str_ireplace( "  ", "<br>", $full_story ));

$short_story = $db->safesql( $parse->BB_Parse( $parse->process( $short_story ), false ) );
$short_story = stripslashes(str_ireplace( "  ", "<br>", $short_story ));
$allow_br = 1;

//id 	autor 	date 	short_story 	full_story 	xfields 	title 	descr 	keywords 	category 	alt_name 	comm_num 	allow_comm 	allow_main 	approve 	fixed 	allow_br 	symbol 	tags 	metatitle 	

// Пишемо теперішній час
$added_time = time() + ($config['date_adjust'] * 60);
$thistime = date( "Y-m-d H:i:s", $added_time );
// Пишемо URL новини
if( trim( $alt_name ) == "" or ! $alt_name ) $alt_name = totranslit2( stripslashes( $title ), true, false ); else $alt_name = totranslit2( stripslashes( $alt_name ), true, false );
// Створюємо буквенний катало, якщо включено
if(!$catalog_url) $catalog_url = $db->safesql( dle_substr( htmlspecialchars( strip_tags( stripslashes( trim( $title ) ) ) ), 0, 1, $config['charset'] ) );
//Пишемо МЕТА-теги
$metatags = create_metatags( $short_story );
// Створюємо новину
$db->query( "INSERT INTO " . PREFIX . "_post (xfields, dates, date, autor, short_story, full_story, title, descr, keywords, category, alt_name, allow_comm, approve, allow_main, fixed, allow_br, symbol, tags, metatitle) values ('$xfields', '$time', '$thistime', '{$member_id['name']}', '$short_story', '$full_story', '$title', '{$description}', '{$keywords}', '$category_list', '{$alt_name}', '1', '1', '1', '0', '1', '$catalog_url', '{$tags}', '{$metatitle}')" );
// Витягуємо останній ІД новини
$row['id'] = $db->insert_id();
// Добавляємо рейтинг і параметри
$db->query( "INSERT INTO " . PREFIX . "_post_extras (news_id, allow_rate, user_id) VALUES('{$row['id']}', '1', '{$member_id['user_id']}')" );
// Імя користувача
$member_id['name'] = $db->safesql($member_id['name']);
// Заливаємо файл
$db->query( "INSERT INTO " . PREFIX . "_files (news_id, name, onserver, author, date, dcount) values ('{$row['id']}', '$filename', '$file_name_dir', '{$member_id['name']}', '$thistime', '0')" );
// Заливаємо АТАЧМЕНТ
$id_attachment = $db->super_query("SELECT * FROM " . PREFIX . "_files WHERE news_id='{$row['id']}' ");
$attachment=$full_story."<br><br>[attachment=".$id_attachment['id']."]";
$db->query( "UPDATE " . USERPREFIX . "_post set full_story='$attachment' where id='{$row['id']}'" );
//Добавляємо  теги
if( $tags != "" ) {
$tags2 = array ();
$tags = explode( ",", $tags );
foreach ( $tags as $value ) {$tags2[] = "('" . $row['id'] . "', '" . trim( $value ) . "')";}
$tags2 = implode( ", ", $tags2 );
$db->query( "INSERT INTO " . PREFIX . "_tags (news_id, tag) VALUES " . $tags2 );
}
// Добавляємо +1 новину в аккаунт користувача
$db->query( "UPDATE " . USERPREFIX . "_users set news_num=news_num+1 where user_id='{$member_id['user_id']}'" );

$_exit.=$title.' '.$_error."<br>";
}

echo $_exit;
//unset($file_url);
echo zvFoter();
echofooter();
}
?>