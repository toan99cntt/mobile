<?php include('../connect.php');

$id= isset($_GET['id']) ? $_GET['id'] :0;
$delete= mysqli_query($conn, "delete from banner where id=$id");
header("location: banner.php");


 ?>