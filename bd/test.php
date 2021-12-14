<?php


require_once '../lib/lib.php';

// ---------------------------------------------------------------------------------------------------------------------

$Ip        = "localhost";
$Login     = "mysql";
$Pass      = "mysql";
$DataBase  = "food";
$Table     = 'test';

// ---------------------------------------------------------------------------------------------------------------------

function sql_err($Init_DataBase){
    print_r('----------------'.PHP_EOL);
    print_r(mysqli_error($Init_DataBase));
    print_r('----------------'.PHP_EOL);
}

$wholesale_list = array(
    'huy_01',
    'huy_11',
    'huy_21',
    'huy_31',
);


$Init_DataBase = Init_DataBase($Ip, $Login, $Pass, $DataBase);

$column = "element";
$Query = add_wholesale($Table, $column, $wholesale_list);
print_r($Query.PHP_EOL);

AddData_DataTable($Init_DataBase, $Query);
sql_err($Init_DataBase);
$res = Get_DataTable($Init_DataBase, $Table);

$res = json_decode($res);
foreach ($res as $value){
    print_r($value);
}

print_r('GOOD ?');








