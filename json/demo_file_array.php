<?php
/*
 * JSON PHP
 * https://www.w3schools.com/js/js_json_php.asp
 *
 * PHP Array
 * Arrays in PHP will also be converted into JSON when using the PHP function json_encode():
 * https://www.w3schools.com/js/showphp.asp?filename=demo_file_array
 */
$myArr = array("John", "Mary", "Peter", "Sally");

$myJSON = json_encode($myArr);

echo $myJSON;
?>

