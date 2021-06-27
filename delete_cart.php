<?php 
include 'connect.php';
$id= isset($_GET['id']) ? $_GET['id'] :0;
session_start();
unset($_SESSION['cart'][$id]);
if($id==0){
	session_destroy();
}
header ('location: product_cart.php');
?>
