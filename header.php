
<?php 
session_start();
include'connect.php';
$produer= mysqli_query($conn, "select hangsx, id from producer");

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="owl/assets/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="owl/assets/owl.theme.default.min.css">
	<link rel="stylesheet" type="text/css" href="Font/kazen-font-v1.0/demo-files/demo.css">
	<link rel="stylesheet" type="text/css" href="Font/kazen-font-v1.0/style.css">
	<link rel="stylesheet" type="text/css" href="css/animate.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<link rel="stylesheet" type="text/css" href="fonts-awesome/css/all.css">
	<link href="css/hover.css" rel="stylesheet" media="all">
	<link rel="stylesheet" href="css/giaodien.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body style="background: #f9f9f9">

	<div style="background: #29a5ff;  box-shadow: 0px 3px 5px #BCBBBB;">
		<div class="container" >
			<nav class="navbar navbar-expand-lg navbar-light p-0  ">
				<a class="navbar-brand" href="#"><img src="images/logoe.png" width="100%" style="width:70px"></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item ">
							<a class="nav-link text-white" href="index.php">TRANG CHỦ </a>
						</li>

						<li class="nav-item dropdown">
							<a class=" text-white nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								ĐIỆN THOẠI
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<?php foreach ($produer as $value) { ?>
									<a class="dropdown-item" href="product.php?id=<?php echo $value['id'] ?>" title=""><?php echo $value['hangsx'] ?></a>
								<?php } ?>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link text-white" href="tintuc.php" >TIN TỨC</a>
						</li>
						<li class="nav-item">
							<a class="nav-link text-white" href="lienhe.php" >LIÊN HỆ</a>
						</li>
					</ul>
					<form style="position: relative;" action="product.php" method="POST" class="form-inline my-2 my-lg-0">
						
						<input class="form-control mr-sm-2" type="text" name="timkiem" placeholder="Search" aria-label="Search">
						<button style="position: absolute; top: 0px; right: 0px " class="btn btn-outline" type="submit"></button>
					</form>
					<div>
						<p ><a style="color: #fff; font-size: 20px" href="product_cart.php" title=""><i class="fas fa-shopping-cart"></i><?php if(!empty($_SESSION['cart'])){ echo "*";} ?></a>
							<a class="text-white" style="margin-left: 20px; margin-right: 5px; font-size: 20px " href="login/index.php" title=""><i  class="fas fa-user"></i></a>
							<a href="logout.php?id=1" class="text-white" style="font-style: italic; font-size: 12px; text-decoration: none"><?php if (isset($_SESSION['username'])) {
								echo 'Chào,';
								echo $_SESSION['username'];
								echo '<i style="font-size: 15px; margin-left: 5px" class="fas fa-sign-out-alt"></i>';
							}
							else{
								echo "Đăng nhập";
							} ?></a></p>
						</div>
					</div>
				</nav>
			</div>

		</div>
		