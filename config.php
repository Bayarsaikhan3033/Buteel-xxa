<?php 
session_start();
//Өгөгдлийн сантай холбох
$conn = mysqli_connect("localhost","root","","myblog");
if(!$conn)
{
	die("Өгөгдлийн сантай холбогдоход алдаа гарлаа! :". mysqli_connect_error());
}
define ('ROOT_PATH', realpath(dirname(__FILE__)));
define('BASE_URL', 'http://localhost/myblog/');
?>