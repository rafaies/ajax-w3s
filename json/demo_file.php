<?php
/*
 * JSON PHP
 * https://www.w3schools.com/js/js_json_php.asp
 *
 * PHP has some built-in functions to handle JSON.
 * Objects in PHP can be converted into JSON by using the PHP function json_encode():
 * https://www.w3schools.com/js/showphp.asp?filename=demo_file
 */
$myObj = new stdClass();
$myObj->name = "John";
$myObj->age = 30;
$myObj->city = "New York";

$myJSON = json_encode($myObj);

echo $myJSON;
?>
