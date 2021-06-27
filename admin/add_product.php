<?php include('headers.php');
include '../connect.php';
$sql= mysqli_query($conn, "select *from producer ");
$image_name='';
if(!empty($_FILES['image']['name'])){
	$image_name=$_FILES['image']['name'];
	move_uploaded_file($_FILES['image']['tmp_name'], '../images/'.$_FILES['image']['name']);
}
if(isset($_POST['name'])){
	$so_luong=$_POST['so_luong'];
	$name=$_POST['name'];
	$gia=$_POST['gia'];
	$status=$_POST['status'];
	$ngaynhap= $_POST['ngaynhap'];
	$hangsx= $_POST['hangsx'];
	$query=mysqli_query($conn, "insert into product(tensp, gia,id_hang,so_luong, trangthai, ngaynhap, image) values ('$name', '$gia', '$hangsx','$so_luong', '$status', '$ngaynhap', 'images/$image_name')");
	if(!$query){
		header("Location: product.php");
	}
}
?>

<div class="container">
	<div class="row" style="margin-top: 70px">
		<div class="col-md-3">

		</div>
		<div class="col-md-9">
			<form method="POST" enctype="multipart/form-data">

				<div class="form-group ">
					<label for="inputEmail4">Tên sản phẩm</label>
					<input type="text" class="form-control" name="name">
				</div>
				<div class="form-group ">
					<label for="inputPassword4">Giá</label>
					<input type="text" class="form-control" name="gia">
				</div>
				<div class="form-group ">
					<label for="inputPassword4">Số lượng</label>
					<input type="text" class="form-control" name="so_luong">
				</div>

				<div class="form-group">
					<p style="font-weight: bold;">Trạng thái</p>
					<input type="radio" name="status" value="1" checked="checked"> Còn hàng
					<input type="radio" name="status" value="0" > Hết hàng
				</div>
				<div class="form-group">
					<label>Ngày nhập</label>
					<input type="date" class="form-control" name="ngaynhap">
				</div>
				<div class="form-group">
					<label>Hãng sản xuất</label>
					<select name="hangsx" class="custom-select custom-select-lg|custom-select-sm">
						<option selected>Open this select menu</option>
						<?php foreach ($sql as $val) {?>
							<option value="<?php echo $val['id']?>"><?php echo $val['hangsx'] ?></option>
						<?php } ?>
					</select>
				</div>
				<div class="form-group">
					<label>Ảnh sản phẩm</label>
					<input type="file" class="form-control" name="image">
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
				
				
			</form>
		</div>
	</div>
</div>



<?php include('footer.php'); ?>