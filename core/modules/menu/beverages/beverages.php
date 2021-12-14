<?php

/**
 * Модуль формирования списка напитков
 * */


/**
 * Функция генерирования списка напитков на определенный периуд
 *
 * @param string $Ip - ip аддресс БД
 * @param string $Login - логин учетной записи БД
 * @param string $Pass - парол учетной записи БД
 * @param string $DataBase - название БД
 * @param string $Table - название таблицы с которой будет производиться работа
 * @param string $day - колличество дней на которое будет составлен список напитков
 *
 * @return array
 */
function beverages($Ip, $Login, $Pass, $DataBase, $Table, $day){


    $Init_DataBase = mysqli_connect($Ip, $Login, $Pass, $DataBase);

    $see = Get_DataTable($Init_DataBase, $Table);
    $res = json_decode($see, true);

    $product = array();
    foreach ($res as $value){
        $product[] = $value['element'];
        #print_r($value['element'].PHP_EOL);
    }

    /**/
    $back = '';
    $release_menu = array();
    for ($i = 0;$i < $day; $i++){

        $v = rand(0, count($product) - 2);
        $prod = $product[$v];

        $cake = true;
        while ($cake){

            if ($prod != $back){
                $cake = false;
            } else {
                $v = rand(0, count($product) - 2);
                $prod = $product[$v];
            }
        }

        $release_menu[] = $prod;
        $back = $product[$v];

    }

    /*
    foreach ($release_menu as $value){
        print_r($value.PHP_EOL);
    }
    */

    return $release_menu;

}

