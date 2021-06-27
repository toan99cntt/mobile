<?php 
session_start();
$id= isset($_GET['id'])? $_GET['id']: 0;
unset($_SESSION['username']);
header ('location: index.php');
 ?>