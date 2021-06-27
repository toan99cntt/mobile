<?php 
include '../connect.php';
$id=isset($_GET['id'])? $_GET['id']: 0;
$query= mysqli_query($conn, "delete from orders where id= $id");
if($query){
	header("Location: order.php");
}


 ?>