<?php

/***********************************************************************************************************************
//
// GLOBAL LIB PHP
//
***********************************************************************************************************************/


# ---------------------------------------------------------------------------------------------------------------------
# SQL

/**
 * Конектор БД
 *
 * @param string $Ip - ip аддресс БД
 * @param string $Login - логин учетной записи БД
 * @param string $Pass - парол учетной записи БД
 * @param string $DataBase - название БД
 *
 * @return mysqli|false
 */
function Init_DataBase($Ip, $Login, $Pass, $DataBase) {
    return mysqli_connect($Ip, $Login, $Pass, $DataBase);
}

/**
 * Добавление данных в таблицу БД
 *
 * @param mysqli $DataBase - коннектор БД
 * @param string $Query - sql запроc
 *
 * @return mysqli|false
 */
function AddData_DataTable($DataBase, $Query) {
    return mysqli_query($DataBase, $Query);
}

/**
 * Получение данных из таблицы БД
 *
 * @param mysqli $DataBase - коннектор БД
 * @param string $Table - название таблицы
 *
 * @return string|false
 */
function Get_DataTable($DataBase, $Table) {
    $result = mysqli_query($DataBase, "SELECT * FROM ".$Table);
    $res = [];
    $state = true;
    while ($state != false) {
        $state = mysqli_fetch_assoc($result);
        $res[] = $state;
    }
    return json_encode($res);
}

/**
 * Удаление данных из таблицы БД
 *
 * @param mysqli $DataBase - коннектор БД
 * @param string $Table - название таблицы
 *
 * @return mysqli_result|bool
 */
function Delete_DataTable($DataBase, $Table) {
    return mysqli_query($DataBase, "TRUNCATE TABLE ".$Table);
}

/**
 * Формирование sql запросв на добавление данных из списка, в таблицу БД
 *
 * @param string $Table - название таблицы
 * @param string $column - название колонки
 * @param array $list - перечень добавляемых элементов
 *
 * @return string
 */
function add_wholesale($Table, $column, $list){
    $res = '';
    foreach ($list as $value){
        $res = $res."('".$value."'),";
    }
    $res = substr($res,0,-1);
    return "INSERT INTO ".$Table." (".$column.") VALUES ".$res;
}