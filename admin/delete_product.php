<?php include('../connect.php');

$id= isset($_GET['id']) ? $_GET['id'] :0;
$delete_detail= mysqli_query($conn, "delete from product_detail where id_product= $id");
$delete= mysqli_query($conn, "delete from product where id=$id");
header("location: product.php");


 ?>