<?php
/*
 * AJAX - XMLHttpRequest
 * https://www.w3schools.com/js/js_ajax_http_send.asp
 *
 * https://www.w3schools.com/js/tryit.asp?filename=tryjs_ajax_get2
 */
$fname = $_GET['fname'] ?? 'Name';
$lname = $_GET['lname'] ?? 'LastName';

echo "Hello ".$fname." ".$lname;
?>
