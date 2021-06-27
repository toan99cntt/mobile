<?php 
include 'header.php';
$carts= isset($_SESSION['cart']) ? $_SESSION['cart'] : [];
if($_SERVER["REQUEST_METHOD"]=='POST'){
	if(isset($_SESSION['cart'])){
		$id_order= time();
		$name= $_POST['name'];
		$phone= $_POST['phone'];
		$email= $_POST['email'];
		$add= $_POST['address'];
		$totalprice=0;
		$status= 1;
		$sum=0;
		$sql1 = "INSERT INTO `order`(`id`,`add`, `name`, `phone`, `email`, `total_price`, `status`) VALUES ('$id_order','$add', '$name', '$phone', '$email', '$totalprice', '$status')";
		$sql_order=mysqli_query($conn,$sql1);
		foreach ($_SESSION['cart'] as $val) { 
			$id=$val['id'];	
			$quantity= $val['quantity'];
			$price=$val['gia'];
			$sum=$quantity*$price;
			$totalprice += $sum;
			$sql = "INSERT INTO `order_detail`(`id_product`, `detail_quantity`, `detail_price`, `id_order`) VALUES ('$id','$quantity','$price','$id_order')";
			$query=mysqli_query($conn, $sql);
			
			
		}
		$set=mysqli_query($conn,"UPDATE `order` SET `total_price`=$totalprice where `id`=$id_order");
		

		unset($_SESSION['cart']);
			header ('Location: done.php');

	}
}
?>
<div class="container">
	<div class="col-md-12">
		<div class="row">
			<div class="col-md-6" style="margin-top: 36px;">
				<form method="post" action="">
					<div class="form-row">
						<div class="form-group col-md-6">
							<label >Họ và Tên</label>
							<input type="text" class="form-control" name="name" placeholder="Nguyen Van A...">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Số điện thoại</label>
							<input type="text" class="form-control" name="phone" placeholder="0987xxxxxx...">
						</div>
					</div>
					<div class="form-group">
						<label >Email</label>
						<input type="mail" class="form-control" name="email" placeholder="abcd@gmail.com....">
					</div>
					<div class="form-group">
						<label for="Address">Address</label>
						<input type="text" class="form-control" name="address" placeholder="Nhà A...">
					</div>
					<button type="submit" class="btn btn-primary">Đặt hàng</button>
				
			</div>
			<div class="col-md-6"  style="margin-top: 30px;">
				<table class="table">

				<thead class="thead-dark|thead-light">
					<tr>
						
						<th scope="col">Ảnh SP</th>
						<th scope="col">Tên SP</th>
						<th scope="col">SL</th>
						<th scope="col">Giá</th>
					</tr>
				</thead>
				<tbody>
					<?php if(isset($_SESSION['cart'])){?>
					<?php $n=1; $tongtien=0; foreach ($_SESSION['cart'] as $val) {?>
						<tr>
							<?php $sum= $val['quantity'] * $val['gia']; ?>
							<td><img width="80px" src="<?php echo $val['image']; ?>"></td>
							<td><?php echo $val['tensp']; ?></td>
							<td>x<?php echo $val['quantity']; ?></td>
							<td><?php echo number_format($val['gia']); ?>đ</td>
							
						</tr>
						<?php $n++; $tongtien +=$sum; } }?>

					</tbody>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td style="color: red; font-weight: bold;"><?php echo number_format($tongtien); ?>đ</td>
					</tr>
				</table>
				</div>
			</div>
			</form>
		</div>
	</div>
	<?php 
	include 'footer.php';
	?>

