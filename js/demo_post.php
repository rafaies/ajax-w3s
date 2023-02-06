<?php
/*
 * AJAX - XMLHttpRequest
 * https://www.w3schools.com/js/js_ajax_http_send.asp
 *
 * https://www.w3schools.com/js/tryit.asp?filename=tryjs_ajax_post2
 */
$fname = $_POST['fname'] ?? 'Name';
$lname = $_POST['lname'] ?? 'LastName';

echo "Hello ".$fname." ".$lname;
?>
