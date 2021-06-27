<?php 
include('header.php');
$query= mysqli_query($conn, "select* from product WHERE  id_hang=1  LIMIT 10");
$query1= mysqli_query($conn, "select * from product where gia>10000000 and id_hang=2 order by rand() LIMIT 10");
$query2= mysqli_query($conn, "select * from product where  not id_hang=1 and not id_hang=2 and gia>5000000 order by rand() LIMIT 10");
$banner= mysqli_query($conn, "select * from banner where status=1");
?>

<div class="container">
	<div class="row banner">
		<div class="col-md-8 p-0">
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img style="height: 320px" class="d-block w-100" src="https://i.ytimg.com/vi/36HnmEcKDJk/maxresdefault.jpg" width="100%" alt="First slide">
					</div>
					<?php foreach ($banner as $a) {?>
						<div class="carousel-item">
							<img style="height: 320px" class="d-block w-100" src="<?php echo $a['image']; ?>"  width="100%" alt="Second slide">
						</div>
					<?php } ?>

				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			
		</div>
		<div class="col-md-4 tit">
			<label>MyPhone mở bán chính thức siêu phẩm Iphone 12 pro max</label>
			<label>Hàng loại mẫu điện thoại mới có mặt tại MyPhone</label>
			<label>Windows 11 xuất hiện bản 'rò rỉ', cài đặt và trải nghiệm ngay.</label>
			<a href="tintuc.php" title="">Tất cả tin tức</a><a href="" title=""> <i class="fas fa-arrow-right"></i> </a>
		</div>
		<div style="margin: 10px 0">
			<img src="images/banner quảng cáo/zzz.jpg" width="100%" style="height: 50px">
		</div>
	</div>
</div>
<div class="hang">
	<div class="container">
		<div class="row">
			<div class="col-md-3 logo_hang wobble-to-top-right">
				<a  style="color: #000" href="product.php?id=2" title=""><img src="images/apple-removebg-preview.png" width="70px"></a>
			</div>
			<div class="col-md-3 logo_hang wobble-to-top-right">
				<a style="color: #000" href="product.php?id=1" title=""><img src="https://www.antconsult.vn/wp-content/uploads/logo-samsung.jpg" width="200px"></a>
			</div>
			<div class="col-md-3 logo_hang wobble-to-top-right">
				<a style="color: #000" href="product.php?id=4" title=""><img src="images/xiaomi.png" width="100px" style="margin-top: 11px"></a>
			</div>
			<div class="col-md-3 logo_hang wobble-to-top-right">
				<a style="color: #000" href="product.php?id=6" title=""><img src="images/oppo.png" width="100px" style="margin-top: 11px"></a>
			</div>

		</div>
	</div>
</div>
<div class="main">
	<div class="container p-0 bg-white">
		
		<p style="background: #29a5ff" class="pt-2 pb-2 font-weight-bold "><img src="images/logo.png" width="20px" alt=""><a href="" class="text-white" title="">ĐIỆN THOẠI SAMSUNG</a></p>
		<div class="text-center te mb-1">
			<a href="product.php?id=1" title="">Samsung note</a>
			<a href="product.php?id=1" title="">Samsung s</a>
			<a href="product.php?id=1" title="">Samsung a</a>
		</div>
		
		<div class="row ml-0" >
			<?php foreach ($query as $value) {?>
				<div class="sp">
					<div class="card-image-top">
						<img src=" <?php echo $value['image'] ?> " alt="" width="100%">
					</div>
					<div class="text">
						<p><a class="text-decoration-none text-dark" style="font-size: 14px" href="product_detail.php?id=<?php echo $value['id'] ?>" title=""><?php echo $value['tensp'] ?></a></p>
						<a href="cart_process.php?id=<?php echo $value['id']; ?>&pro=0" title=""><i class="fas fa-cart-plus"></i></a>
						<label class=" font-weight-bold" style="font-size: 15px; color: red"> <?php echo number_format($value['gia']) ?>đ</label>
						<p style="border-left: 2px solid #FCC508; font-size: 14px" class="text-secondary">🎁 Quà tặng đặc biệt</p>
					</div>

				</div>
			<?php } ?>
		</div>
		<div class="">
			<div style="margin: 10px 0">
				<img src="images/banner quảng cáo/xxx.jpg" width="100%" style="height: 50px">
			</div>
			<p style="background: #29a5ff" class="pt-2 pb-2 font-weight-bold "><img src="images/logo.png" width="20px" alt=""><a href="" class="text-white" title="">ĐIỆN THOẠI IPHONE</a></p>
		</div>
		<div class="row ml-0" >
			<?php foreach ($query1 as $value) {?>
				<div class="sp">
					<div class="card-image-top">
						<img src=" <?php echo $value['image'] ?> " alt="" width="100%">
					</div>
					<div class="text">
						<p><a class="text-decoration-none text-dark" style="font-size: 14px" href="product_detail.php?id=<?php echo $value['id'] ?>" title=""><?php echo $value['tensp'] ?></a></p>
						<a href="cart_process.php?id=<?php echo $value['id']; ?>&pro=0" title=""><i class="fas fa-cart-plus"></i></a>
						<label class=" font-weight-bold" style="font-size: 15px; color: red"> <?php echo number_format($value['gia']) ?>đ</label>
						<p style="border-left: 2px solid #FCC508; font-size: 14px" class="text-secondary">🎁 Quà tặng đặc biệt</p>
					</div>

				</div>
			<?php } ?>
		</div>
		<div class="">
			<div style="margin: 10px 0">
				<img src="images/banner quảng cáo/xxx.jpg" width="100%" style="height: 50px">
			</div>
			<p style="background: #29a5ff" class="pt-2 pb-2 font-weight-bold "><img src="images/logo.png" width="20px" alt=""><a href="" class="text-white" title="">ĐIỆN THOẠI KHÁC</a></p>
		</div>
		<div class="row ml-0" >
			<?php foreach ($query2 as $value) {?>
				<div class="sp">
					<div class="card-image-top">
						<img src=" <?php echo $value['image'] ?> " alt="" width="100%">
					</div>
					<div class="text">
						<p><a class="text-decoration-none text-dark" style="font-size: 14px" href="product_detail.php?id=<?php echo $value['id'] ?>" title=""><?php echo $value['tensp'] ?></a></p>
						<a href="cart_process.php?id=<?php echo $value['id']; ?>&pro=0" title=""><i class="fas fa-cart-plus"></i></a>
						<label class=" font-weight-bold" style="font-size: 15px; color: red"> <?php echo number_format($value['gia']) ?>đ</label>
						<p style="border-left: 2px solid #FCC508; font-size: 14px" class="text-secondary">🎁 Quà tặng đặc biệt</p>
					</div>

				</div>
			<?php } ?>
		</div>
	</div>
</div>
<script>
	$('.carousel').carousel({
		interval: 500
	})
</script>
<?php include 'footer.php'; ?>