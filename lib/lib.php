<?php

/***********************************************************************************************************************
//
// GLOBAL LIB PHP
//
***********************************************************************************************************************/


# ---------------------------------------------------------------------------------------------------------------------
# SQL

// инициализация БД
function Init_DataBase($Ip, $Login, $Pass, $DataBase) {
    return mysqli_connect($Ip, $Login, $Pass, $DataBase);
}

// добавление данных в таблицу
function AddData_DataTable($DataBase, $Query) {
    return mysqli_query($DataBase, $Query);
}


// Получение данных из таблици
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

// удаление всех строк в таблице
function Delete_DataTable($DataBase, $Table) {
    return mysqli_query($DataBase, "TRUNCATE TABLE ".$Table);
}


function Create_Query($Init_DataBase, $Table, $dattime_beginning_format, $dattime_ending_format, $path){
    $query = 'INSERT INTO '.$Table.' ('.'dattime_beginning'.','.'dattime_ending'.','.'path'.','.'state)'.' VALUES'.' ('.$dattime_beginning_format.','.$dattime_ending_format.','.'"'.$path.'"'.','.'"true"'.')';
    mysqli_real_escape_string($Init_DataBase, $query);
    return $query;
}

function add_wholesale($Table, $column, $list){
    $res = '';
    foreach ($list as $value){
        $res = $res."('".$value."'),";
    }
    $res = substr($res,0,-1);
    return "INSERT INTO ".$Table." (".$column.") VALUES ".$res;
}