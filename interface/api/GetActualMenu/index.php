<?php

$init_data = file_get_contents('php://input');


header('Content-type: application/json; charset=utf-8');

include "D:\JoJo\GlobaLibs\php\DataBase\ShowData_BD\core\ShowData_BD.php";

$Ip = "localhost";
$Login = "mysql";
$Pass = "mysql";
$DataBase = "food";
$Table = "current_menu";


echo ShowData_BD($Ip, $Login, $Pass, $DataBase, $Table);