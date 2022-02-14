<?php
header("Content-Type: application/json; charset=UTF-8");
$obj = json_decode($_POST["x"], false);
$table = htmlentities($obj->table);
$conn = new mysqli("localhost", "root", "root", "myDB");
$stmt = $conn->prepare("SELECT name FROM $table LIMIT ?");
$stmt->bind_param("s", $obj->limit);
$stmt->execute();
$result = $stmt->get_result();
$outp = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($outp);
