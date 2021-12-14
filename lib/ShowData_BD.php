<?php

/**
 * Получение всех данных из таблицы БД (если конектор БД не предоставлен)
 *
 * @param string $Ip - ip аддресс БД
 * @param string $Login - логин учетной записи БД
 * @param string $Pass - парол учетной записи БД
 * @param string $DataBase - название БД
 * @param string $Table - название таблицы
 *
 * @return string|false
 */
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

/**
 * Получение всех данных из таблицы БД (если конектор БД предоставлен)
 *
 * @param string $Ip - ip аддресс БД
 * @param string $Login - логин учетной записи БД
 * @param string $Pass - парол учетной записи БД
 * @param string $DataBase - название БД
 * @param string $Table - название таблицы
 *
 * @return string|false
 */
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