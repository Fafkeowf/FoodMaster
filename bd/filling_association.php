<?php

/**
 * Добавление данных в таблицу ассоциации основного блюда и гарниров к ним
 */


require_once '../lib/lib.php';


$list_element = array(
    "1,2,3,4,6,7",
    "9",
    "1,2,3,4,5,6,7,8",
    "9",
    "1,2,3,4,5,6,7,8",
    "2,3,4,5,8",
    "1,2,3,4,5,6,7,8",
    "9",
    "9",
    "9",
    "9",
    "1,6,7",
    "1,6,7",
    "9",
    "9",
    "9",
    "9",
    "9",
    "9",
    "1,5,6,7,8"
);


$Ip       = "localhost";
$Login    = "mysql";
$Pass     = "mysql";
$DataBase = "food";
$Table    = "association";


$Init_DataBase = Init_DataBase($Ip, $Login, $Pass, $DataBase);


$Query = add_wholesale($Table, 'garnishs', $list_element);


AddData_DataTable($Init_DataBase, $Query);


$res = json_decode(Get_DataTable($Init_DataBase, $Table));


foreach ($res as $value){
    print_r($value);
}

// ---------------------------------------------------------------------------------------------------------------------




