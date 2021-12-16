<?php

/**
 * Добавление данных в таблицу main_dishes (основные блюда)
 */

require_once '../lib/lib.php';

// IN DATA
$list_element = array(
    "spaschetti",
    "chicken_forge",
    "fried_potatoes",
    "ramen",
    "buckwheat",
    "rice",
    "mashed_potatoes",
    "pilaf",
    "borscht",
    "pea_soup",
    "ear",
    "fish",
    "okroshka",
    "bigus",
    "pitcher",
    "pie",
    "сake",
    "stewed_potatoes",
    "fur_coat",
);

// ---------------------------------------------------------------------------------------------------------------------

$Ip        = "mysql";
$Login     = "root";
$Pass      = "12345";
$DataBase  = "food";
$Table     = 'main_dishes';

// ---------------------------------------------------------------------------------------------------------------------


$Init_DataBase = Init_DataBase($Ip, $Login, $Pass, $DataBase);

$column = 'element';
$Query = add_wholesale($Table, $column, $list_element);
print_r($Query.PHP_EOL);

//AddData_DataTable($Init_DataBase, $Query);

$see = Get_DataTable($Init_DataBase, $Table);
$res = json_decode($see);
foreach ($res as $value){
    print_r($value);
}
print_r(PHP_EOL.'GOOD ?');








