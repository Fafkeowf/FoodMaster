<?php




function association($Ip, $Login, $Pass, $DataBase, $main_dishes){

    $Init_DataBase = mysqli_connect($Ip, $Login, $Pass, $DataBase);

    $release = array();
    foreach ($main_dishes as $value){

        $value_value = $value->element;
        $value = $value->id;


        // GET ASOC
        // -------------------------------------------------------------------------------------------------------------
        $result = mysqli_query($Init_DataBase, "SELECT garnishs FROM association WHERE main_dishes=".$value);
        $res = [];
        $state = true;
        while ($state != false) {
            $state = mysqli_fetch_assoc($result);
            $res[] = $state;
        }

        $elements = $res[0]["garnishs"];
        #print_r($elements.PHP_EOL);

        // GET INDEX FROM ASOC
        // -------------------------------------------------------------------------------------------------------------

        $part_elements = explode(",", $elements);

        $for_random = array();
        foreach ($part_elements as $val){
            #print_r($val);
            $for_random[] = $val;
        }


        $size_for_random = count($for_random);
        $rnd = rand(0, $size_for_random - 1);
        $for_random[$rnd];
        $random_elem = $for_random[$rnd];
        #print_r($random_elem.PHP_EOL);


        // GET необходимого элемента
        $result = mysqli_query($Init_DataBase, "SELECT element FROM garnish WHERE id=".$random_elem);
        $res = [];
        $state = true;
        while ($state != false) {
            $state = mysqli_fetch_assoc($result);
            $res[] = $state;
        }
        $el = $res[0]["element"];
        #print_r($el);
        $release[] = $el;


        #print_r($res.PHP_EOL);
        // SELECT FROM table_name WHERE id=2
    }

    return $release;

}