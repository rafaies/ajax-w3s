<?php
/*
 * The only difference in the PHP file is the method for getting the transferred data.
 * Use $_POST instead of $_GET:
 */
header("Content-Type: application/json; charset=UTF-8");
$obj = json_decode($_POST["x"], false);

$conn = new mysqli("localhost", "root", "root", "myDB");
$stmt = $conn->prepare("SELECT name FROM customers LIMIT ?");
$stmt->bind_param("s", $obj->limit);
$stmt->execute();
$result = $stmt->get_result();
$outp = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($outp);
?>