<?php

$l1 = array(
    "spaschetti",
    "chicken_forge",
    "fried_potatoes",
    "ramen",
    "buckwheat",
    "rice",
    "mashed_potatoes",
    "pilaf",
    "borscht",
    "pea_soup",
    "ear",
    "fish",
    "okroshka",
    "bigus",
    "pitcher",
    "pie",
    "сake",
    "stewed_potatoes",
    "fur_coat",
);

$l2 = array(
    "1,2,3,4,6,7",
    "9",
    "1,2,3,4,5,6,7,8",
    "9",
    "1,2,3,4,5,6,7,8",
    "2,3,4,5,8",
    "1,2,3,4,5,6,7,8",
    "9",
    "9",
    "9",
    "9",
    "1,6,7",
    "1,6,7",
    "9",
    "9",
    "9",
    "9",
    "9",
    "9",
    "1,5,6,7,8"
);

for($i = 0; $i <= 20; $i++){
    $str = $l1[$i].' '.$l2[$i];
    print_r($str.PHP_EOL);
}