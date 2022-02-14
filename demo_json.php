<?php
// https://www.php.net/manual/en/function.json-decode.php
// When true, JSON objects will be returned as associative arrays; when false, JSON objects will be returned as objects.

$x = json_decode($_GET["x"], false);
// var_dump($x);
echo "demo_json.php<br>";

echo $x->name . " from " . $x->city . " is " . $x->age;
//John from New York is 31