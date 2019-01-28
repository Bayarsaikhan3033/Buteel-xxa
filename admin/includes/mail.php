<?php 
ini_set( 'display_errors', 1 );
error_reporting( E_ALL );

if (isset($_POST['send'])) {
  	$_SESSION['message'] = "Имейл илгээх боломжгүй байна. Та серверээ шалгана уу!";
}
?>