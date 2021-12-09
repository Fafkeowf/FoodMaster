<?php

include 'D:\JoJo\GlobaLibs\php\lib.php';


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

