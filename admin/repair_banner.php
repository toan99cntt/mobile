<?php include('headers.php');
include '../connect.php';
$id= isset($_GET['id']) ? $_GET['id'] :0;
$banner=mysqli_query($conn, "select *from banner where id=$id");

$image_name='';
if(!empty($_FILES['image']['name'])){
  $image_name=$_FILES['image']['name'];
  move_uploaded_file($_FILES['image']['tmp_name'], '../images/'.$_FILES['image']['name']);
}
if(isset($_POST['name'])){
  $name=$_POST['name'];
  $status=$_POST['status'];
  $query=mysqli_query($conn, "update banner set name='$name',status= '$status',image= 'images/$image_name' where id=$id");
 

}
header("location: banner.php");
?>

<div class="container">
	<div class="row" style="margin-top: 70px">
		<div class="col-md-3">

		</div>
		<div class="col-md-9">
      <?php foreach ($banner as $a) {?>
			<form method="POST" enctype="multipart/form-data">
				<div class="form-group">
					<label>Tên banner</label>
					<input type="text" class="form-control" name="name" value="<?php echo $a['name']; ?>">
				</div>
				<div class="form-group">
					<label>Ảnh</label>
					<input type="file" class="form-control" name="image">
          <img src="../<?php echo $a['image']; ?>"  width="400px" alt="">
				</div>
				<div class="form-group">
					<p style="font-weight: bold;">Status</p>
					<input type="radio" name="status" value="1" > Hiện
					<input type="radio" name="status" value="0" checked="checked"> Ẩn
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
				
				
			</form>
      <?php } ?>
		</div>
	</div>
</div>



<?php include('footer.php'); ?>