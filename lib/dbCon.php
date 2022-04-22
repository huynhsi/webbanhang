<?php
$host = "localhost";
$user = "root";
$pass = "";
$data = "quanlydathang";
$conn = mysqli_connect($host, $user, $pass, $data);
mysqli_set_charset($conn, 'UTF8');
if(!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}
?>