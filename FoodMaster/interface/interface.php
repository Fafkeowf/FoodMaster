<?php

include "D:\\WebServer\\OpenServer\\domains\\foodmaster\\core\\includes.php";

//$g = htmlspecialchars($_GET);

$Ip        = "localhost";
$Login     = "mysql";
$Pass      = "mysql";
$DataBase  = "food";
$Table     = "current_menu";


$Init_DataBase = mysqli_connect($Ip, $Login, $Pass, $DataBase);

print_r(Get_DataTable($Init_DataBase, $Table));