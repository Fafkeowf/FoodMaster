<?php

function ShowData_BD($Ip, $Login, $Pass, $DataBase, $Table){

    $InitDataBase = mysqli_connect($Ip, $Login, $Pass, $DataBase);

    $result = mysqli_query($InitDataBase, "SELECT * FROM ".$Table);
    $res = [];
    $state = true;

    while ($state != false) {
        $state = mysqli_fetch_assoc($result);
        $res[] = $state;
    }

    $size_res = count($res);
    unset($res[$size_res - 1]);
    $release = array("list" => "");
    $release["list"] = $res;
    return json_encode($release);
}

$Ip        = "mysql";
$Login     = "root";
$Pass      = "12345";
$DataBase  = "food";
$Table     = "beverages";

$data = ShowData_BD($Ip, $Login, $Pass, $DataBase, $Table);

print_r($data);