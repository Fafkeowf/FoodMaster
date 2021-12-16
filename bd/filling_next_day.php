<?php

/**
 * Добавление данных в таблицу next_day (блюда из категории *на завтра*)
 */


require_once '../lib/lib.php';

// IN DATA
$list_element = array(
    "sandwich",
    "sprats",
    "flakes",
    "meat_tartlets",
    "nuggets",
    "samsa",
    "toast",
);

// ---------------------------------------------------------------------------------------------------------------------

$Ip        = "mysql";
$Login     = "root";
$Pass      = "12345";
$DataBase  = "food";
$Table     = 'next_day';

// ---------------------------------------------------------------------------------------------------------------------


$Init_DataBase = Init_DataBase($Ip, $Login, $Pass, $DataBase);

$column = 'element';
$Query = add_wholesale($Table, $column, $list_element);
print_r($Query.PHP_EOL);

AddData_DataTable($Init_DataBase, $Query);

$see = Get_DataTable($Init_DataBase, $Table);
$res = json_decode($see);
foreach ($res as $value){
    print_r($value);
}
print_r(PHP_EOL.'GOOD ?');








