<?php

include 'D:\JoJo\GlobaLibs\php\lib.php';

// IN DATA
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

// ---------------------------------------------------------------------------------------------------------------------

$Ip        = "localhost";
$Login     = "mysql";
$Pass      = "mysql";
$DataBase  = "food";
$Table     = 'association';

// ---------------------------------------------------------------------------------------------------------------------


$Init_DataBase = Init_DataBase($Ip, $Login, $Pass, $DataBase);

$column = 'garnishs';
$Query = add_wholesale($Table, $column, $list_element);
print_r($Query.PHP_EOL);

AddData_DataTable($Init_DataBase, $Query);

$see = Get_DataTable($Init_DataBase, $Table);
$res = json_decode($see);
foreach ($res as $value){
    print_r($value);
}
print_r(PHP_EOL.'GOOD ?');








