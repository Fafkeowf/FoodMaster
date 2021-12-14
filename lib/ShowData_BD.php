<?php


function test_test_(){
    print_r(PHP_EOL.'It is work'.PHP_EOL);
}

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


function ShowData_BD_lite($InitDataBase, $Table){

    $result = mysqli_query($InitDataBase, "SELECT * FROM ".$Table);
    $res = [];
    $state = true;

    while ($state != false) {
        $state = mysqli_fetch_assoc($result);
        $res[] = $state;
    }

    $size_res = count($res);
    unset($res[$size_res - 1]);
    return json_encode($res);
}