<?php include 'headers.php'; ?>
<?php ob_start();
include '../connect.php';
$id= isset($_GET['id']) ? $_GET['id'] :0;
$query=mysqli_query($conn,"select * from orders where id=$id");

if(isset($_POST['name'])){
		$name= $_POST['name'];
		$phone= $_POST['sdt'];
		$total= $_POST['total_price'];
		$email= $_POST['email'];
		$status= $_POST['status'];
		$add= $_POST['add'];
		$sql = "UPDATE `orders` SET `add`='$add',`name`='$name',`phone`='$phone',`email`='$email',`total_price`='$total',`status`='$status' WHERE `id`=$id";
		mysqli_query($conn,$sql);
		

	}
header ('Location: order.php');
 ?>

<div class="container">
	<div class="row" style="margin-top: 70px">
		<div class="col-md-3">

		</div>
		<div class="col-md-9">
			<?php foreach ($query as $a) {?>
			<form method="POST" >

				<div class="form-group ">
					<label for="inputEmail4">Tên khách hàng</label>
					<input type="text" class="form-control" name="name" value="<?php echo $a['name'] ?>">
				</div>
				<div class="form-group ">
					<label for="inputPassword4">Sđt</label>
					<input type="text" class="form-control" name="sdt" value="<?php echo $a['phone'] ?>">
				</div>
				<div class="form-group ">
					<label for="inputPassword4">Email</label>
					<input type="email" class="form-control" name="email" value="<?php echo $a['email'] ?>">
				</div>

				<div class="form-group">
					<p style="font-weight: bold;">Trạng thái</p>
					<input type="radio" name="status" value="1" checked="checked"> Đang vận chuyển
					<input type="radio" name="status" value="0" > Hoàn thành
				</div>
				<div class="form-group">
					<label>Tổng đơn</label>
					<input type="text" class="form-control" name="total_price" value="<?php echo $a['total_price'] ?>">
				</div>
				<div class="form-group">
					<label>Địa chỉ</label>
					<input type="text" class="form-control" name="add" value="<?php echo $a['add'] ?>"autocomplete="">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
				
				
			</form>
		<?php } ?>
		</div>
	</div>
</div>

 <?php include 'footer.php'; ?>