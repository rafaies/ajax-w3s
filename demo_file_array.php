<?php
/*
 * PHP Array
 * Arrays in PHP will also be converted into JSON when using the PHP function json_encode():
 * https://www.w3schools.com/js/showphp.asp?filename=demo_file_array
 */
$myArr = array("John", "Mary", "Peter", "Sally");

$myJSON = json_encode($myArr);

echo $myJSON;
?>

