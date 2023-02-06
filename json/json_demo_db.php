<?php
/*
 * JSON PHP
 * https://www.w3schools.com/js/js_json_php.asp
 *
 * Convert the request into an object, using the PHP function json_decode().
 * Access the database, and fill an array with the requested data.
 * Add the array to an object, and return the object as JSON using the json_encode() function.
 * https://www.w3schools.com/js/js_json_php.asp
 */
header("Content-Type: application/json; charset=UTF-8");
$obj = json_decode($_GET["x"], false);
$conn = new mysqli("localhost", "root", "root", "myDB");
$stmt = $conn->prepare("SELECT name FROM customers LIMIT ?");
$stmt->bind_param("s", $obj->limit);
$stmt->execute();
$result = $stmt->get_result();
$outp = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($outp);
?>
