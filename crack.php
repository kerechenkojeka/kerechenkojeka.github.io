<?php
/*
=====================================================
 Файл: crack.php
-----------------------------------------------------
 Назначение: Активация скрипта
=====================================================
*/
@session_start();
@ob_start(); 
@ob_implicit_flush(0);

error_reporting(E_ALL ^ E_NOTICE);
@ini_set('display_errors', true);
@ini_set('html_errors', false);
@ini_set('error_reporting', E_ALL ^ E_NOTICE);

define('DATALIFEENGINE', true);
define('ROOT_DIR', dirname (__FILE__));
define('ENGINE_DIR', ROOT_DIR.'/engine');

require_once ('engine/data/config.php');

if (($config['version_id']>="8.0"))
{
     require_once ('engine/inc/include/init.php');
}
else
     require_once ('engine/inc/init.php');


if ($config['version_id']=="7.5" || $config['version_id']=="8.0")
{
     $domen_hash=$domen_info;
}elseif ($config['version_id'] >= "8.2" )
{
     $domen_hash=$domen_md5;
}

$config['key'] = $domen_hash;

$handler = fopen(ENGINE_DIR.'/data/config.php', "w") or die("Извините, но невозможно записать информацию в файл <b>.engine/data/config.php</b>.<br />Проверьте правильность проставленного CHMOD!");
fwrite($handler, "<?PHP \n\n//System Configurations\n\n\$config = array (\n\n");
foreach($config as $name => $value)
{
    fwrite($handler, "'{$name}' => \"{$value}\",\n\n");
}
fwrite($handler, ");\n\n?>");
fclose($handler);

echo "Активация прошла успешно";
?>