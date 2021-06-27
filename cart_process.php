<?php 
session_start();
include 'connect.php';
$id= isset($_GET['id']) ? $_GET['id'] :0;
$pro= isset($_GET['pro']) ? $_GET['pro'] :0;
$quantity= isset($_GET['quantity']) ? $_GET['quantity'] :1;
$query= mysqli_query($conn, "select id, tensp, gia, image from product where id= $id");
$product= mysqli_fetch_assoc($query);
if($product){
	
		if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['quantity'] +=1;
		}
		else{
			$product['quantity']= 1;
			$_SESSION['cart'][$id] = $product;
		}
	
}

if($pro==1){
	header ('location: product_cart.php');
}
else if($pro==0){
	header ('location: product.php');
	
}
else if($pro==2){
	if($quantity>=1){
		// $quantity +=1;
		if(isset($_SESSION['cart'][$id])){
			$_SESSION['cart'][$id]['quantity'] = $quantity;
			header ('location: product_cart.php');
			
		}
	}else{
		unset($_SESSION['cart'][$id]);
		header ('location: product_cart.php');
	}                             
	
}
echo '<pre>';
print_r($_SESSION['cart']);
?>
