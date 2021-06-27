<?php 
	$conn= mysqli_connect("localhost", "root", "", "qlbanhang");
	mysqli_set_charset($conn,'utf8');
	if(!$conn){
		echo "kết nối thất bại";
	}
 ?>