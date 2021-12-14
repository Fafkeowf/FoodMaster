<?php

/**
 * Генерирование полного основного меню и наполнение им таблицы 'current_menu'
 */

/*test IDE git*/

require_once 'modules/menu/association/association.php';

require_once '../lib/lib.php';

require_once 'modules/menu/beverages/beverages.php';
require_once 'modules/menu/main_dishes/main_dishes.php';
require_once 'modules/menu/next_day/next_day.php';


$Ip        = "localhost";
$Login     = "mysql";
$Pass      = "mysql";
$DataBase  = "food";
$Table     = "beverages";

$day = 30;


$beverages = beverages($Ip, $Login, $Pass, $DataBase, "beverages", $day);

$next_day = next_day($Ip, $Login, $Pass, $DataBase, "next_day", $day);
/*
foreach ($beverages as $value){
    print_r($value.PHP_EOL);
}
*/

$main_dishes = main_dishes($Ip, $Login, $Pass, $DataBase, "last_month", $day);

$association = association($Ip, $Login, $Pass, $DataBase, $main_dishes);

#print_r(count($association).' -- -- --');

/**/
print_r(PHP_EOL.count($beverages).' '.count($next_day).' '.count($main_dishes).' '.count($association).PHP_EOL);

#$release = array();
for ($i = 0;$i < $day;$i++){
    #print_r($beverages[$i].', '.$next_day[$i].', '.$main_dishes[$i]->element.', '.$association[$i].PHP_EOL);
    $release = $release."('".$beverages[$i]."','".$next_day[$i]."','".$main_dishes[$i]->element."','".$association[$i]."'),";
    #print_r($release.PHP_EOL);
}

$release = substr($release,0,-1);
#print_r($release.PHP_EOL);

$release_query = "INSERT INTO current_menu (beverages,next_day,main_dishes,garnish) VALUES ".$release;
print_r($release_query);

$Init_DataBase = mysqli_connect($Ip, $Login, $Pass, $DataBase);

mysqli_query($Init_DataBase, "TRUNCATE TABLE "."current_menu");
mysqli_query($Init_DataBase, $release_query);
print_r(mysqli_error($Init_DataBase));



