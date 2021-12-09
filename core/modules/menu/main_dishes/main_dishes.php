<?php

function Delete_DataTable_($DataBase, $Table) {
    return mysqli_query($DataBase, "TRUNCATE TABLE ".$Table);
}


function add_wholesale_($Table, $column, $list){
    $res = '';
    foreach ($list as $value){
        $res = $res."('".$value->element."'),";
    }
    $res = substr($res,0,-1);
    return "INSERT INTO ".$Table." (".$column.") VALUES ".$res;
}


function main_dishes($Ip, $Login, $Pass, $DataBase, $Table, $day){

    $Init_DataBase = mysqli_connect($Ip, $Login, $Pass, $DataBase);



    //mysqli_query($Init_DataBase, "TRUNCATE TABLE ".$Table);


    $main_menu = array('food1', 'food2', 'food3', 'food4', 'food5', 'food6', 'wedw', 'wefffff');
    $main = $main_menu;
    $iskl = $main_menu;

    // MAIN MENU
    // -----------------------------------------------------------------------------------------------------------------

    $main_menu = Get_DataTable($Init_DataBase, "main_dishes");
    $main_menu = json_decode($main_menu);
    $lost_el = count($main_menu) - 1;
    unset($main_menu[$lost_el]);
    $main = $main_menu;
    $iskl = $main_menu;

    #print_r($main_menu);

    /*
    foreach ($main_menu as $value){
        print_r($value);
    }
    print_r('--- '. count($main_menu));
    */
    // -----------------------------------------------------------------------------------------------------------------



    // BACK
    // -----------------------------------------------------------------------------------------------------------------
    mysqli_query($Init_DataBase, "TRUNCATE TABLE "."last_month");
    $back = Get_DataTable($Init_DataBase, "last_month");
    $back = json_decode($back);

    /*
    foreach ($back as $value){
        print_r($value);
    }
    */
    // -----------------------------------------------------------------------------------------------------------------



    // NUMBER BACK
    // -----------------------------------------------------------------------------------------------------------------
    #$number_back = 29;
    $number_back_ = Get_DataTable($Init_DataBase, "last_numb");
    $number_back_ = json_decode($number_back_);

    foreach ($number_back_ as $value){
        $number_back = $value->numb;
        print_r($number_back.PHP_EOL);
    }

    // -----------------------------------------------------------------------------------------------------------------


    // DAY
    // -----------------------------------------------------------------------------------------------------------------
    $number = $day;
    print_r($number.PHP_EOL);
    // -----------------------------------------------------------------------------------------------------------------

    /**/

    $menu = array();

    $size_main_menu = count($main_menu);
    $size_main = count($main);
    $size_iskl = count($iskl);
    $size_back = count($back);

// PART - 1 & 2
// ---------------------------------------------------------------------------------------------------------------------
    #print_r(PHP_EOL.'PART - 1 & 2'.PHP_EOL.'-------------------------------'.PHP_EOL);

    $rr = $size_back - 1;
    print_r('---------- '.$rr);

    if ($rr != 0){
        for ($i = $size_back - 1; $i >= ($size_back - $number_back); $i--) {
            $key = array_search($back[$i], $main);
            if ($key != false) {
                unset($main[$key]);
            }
        }
        $main = array_values($main);
        print_r($main);
    }



// PART - 3
// ---------------------------------------------------------------------------------------------------------------------
    #print_r(PHP_EOL.'PART - 3'.PHP_EOL.'-------------------------------'.PHP_EOL);

    #print_r($main);
    shuffle($main);
    #print_r($main);


// PART - 4
// ---------------------------------------------------------------------------------------------------------------------
    #print_r(PHP_EOL.'PART - 4'.PHP_EOL.'-------------------------------'.PHP_EOL);

    $size_iskl = count($main);

    $msx_iteration = 0;
    if ($size_iskl <= $number){
        $msx_iteration = $size_iskl;
    }
    else{
        $msx_iteration = $number;
    }

    for ($i = 0; $i < $msx_iteration; $i++){
        $menu[] = $main[$i];
    }
    #print_r($size_iskl);
    #print_r($main);

// PART - 5
// ---------------------------------------------------------------------------------------------------------------------
    #print_r(PHP_EOL.'PART - 5'.PHP_EOL.'-------------------------------'.PHP_EOL);

    shuffle($main_menu);
    #print_r($main_menu);


// PART - 6
// ---------------------------------------------------------------------------------------------------------------------
    #print_r(PHP_EOL.'PART - 6'.PHP_EOL.'-------------------------------'.PHP_EOL);

    $current_free_size_menu = $number - count($menu);

    $int_numb = (int)($current_free_size_menu / count($main_menu));
    $ost_numb = $current_free_size_menu % count($main_menu);

    #print_r($int_numb.' '.$ost_numb.' '.$current_free_size_menu.' '.count($main_menu));

// PART - 7
// ---------------------------------------------------------------------------------------------------------------------
    #print_r(PHP_EOL.'PART - 7'.PHP_EOL.'-------------------------------'.PHP_EOL);


    for ($i = 0; $i < $int_numb; $i++){
        shuffle($main_menu);
        foreach ($main_menu as $value) {
            $menu[] = $value;
        }
    }

    #print_r('--- '.count($menu).' ---'.PHP_EOL);

    #unset($menu[0]);
    #print_r($menu);

// PART - 8
// ---------------------------------------------------------------------------------------------------------------------
    print_r(PHP_EOL.'PART - 8'.PHP_EOL.'-------------------------------'.PHP_EOL);

    shuffle($main_menu);

    $siz = count($main_menu) - $ost_numb;
    for ($i = count($main_menu) - 1; $i >= $siz; $i--){
        $menu[] = $main_menu[$i];
    }

    #print_r(count($menu).PHP_EOL);
    #print_r($menu);


// ADD last_numb
// ---------------------------------------------------------------------------------------------------------------------

    /**/
    mysqli_query($Init_DataBase, "TRUNCATE TABLE "."last_numb");

    $Query_add_ost_numb = 'INSERT INTO last_numb (numb) VALUES '.'('.$ost_numb.')';
    mysqli_query($Init_DataBase, $Query_add_ost_numb);


// ---------------------------------------------------------------------------------------------------------------------


// ADD CURRENT MENU
// ---------------------------------------------------------------------------------------------------------------------

    mysqli_query($Init_DataBase, "TRUNCATE TABLE "."last_month");

    $QQ = add_wholesale_("last_month", "element", $menu);
    #print_r($QQ.PHP_EOL);

    #print_r(count($menu));
    mysqli_query($Init_DataBase, $QQ);

    #$back = Get_DataTable($Init_DataBase, "last_month");
    #$back = json_decode($back);
    #print_r($back);

    return $menu;

// ---------------------------------------------------------------------------------------------------------------------

}
