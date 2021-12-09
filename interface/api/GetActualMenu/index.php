<?php

$init_data = json_decode(file_get_contents('php://input'));


header('Content-type: application/json; charset=utf-8');

include "D:\JoJo\GlobaLibs\php\DataBase\ShowData_BD\core\ShowData_BD.php";

$Ip = "localhost";
$Login = "mysql";
$Pass = "mysql";
$DataBase = "food";
$Table = "current_menu";

#print_r(json_encode(array("test" => 'test_test')));


echo ShowData_BD($Ip, $Login, $Pass, $DataBase, $Table);