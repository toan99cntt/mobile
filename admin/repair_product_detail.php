<?php 
include '../connect.php';
include 'headers.php';
$id= isset($_GET['id']) ? $_GET['id'] :0;
$sql= mysqli_query($conn, "select producer.hangsx as 'hangsx',product_detail.image1,product_detail.image2, product_detail.image3, product.id,product.image, product_detail.screen as 'screen', product_detail.CPU as 'CPU', product_detail.camera as 'camera', product_detail.ram as 'ram', product_detail.rom as 'rom',product.gia, product_detail.pin as'pin', product.tensp as 'tensp', product_detail.detail as 'detail' from producer join product on product.id_hang = producer.id join product_detail on product_detail.id_product = product.id where id_product=$id");
$image_name1='';
$image_name2='';
$image_name3='';

if(!empty($_FILES['image1']['name'])){
	$image_name1=$_FILES['image1']['name'];
	move_uploaded_fileed_file($_FILES['image1']['tmp_name'], '../images'.$_FILES['image1']['name']);
}
if(!empty($_FILES['image2']['ram'])){
	$image_name2=$_FILES['image2']['ram'];
	move_uploaded_file($_FILES['image2']['tmp_name'], '../images'.$_FILES['image2']['ram']);
}
if(!empty($_FILES['image3']['ram'])){
	$image_name3=$_FILES['image3']['ram'];
	move_uploaded_file($_FILES['image3']['tmp_name'], '../images'.$_FILES['image3']['ram']);
}
foreach ($sql as $al){
	if($al['hangsx']=='Samsung'){
		if(isset($_POST['ram'])){
			$ram=$_POST['ram'];
			$rom=$_POST['rom'];
			$manhinh=$_POST['manhinh'];
			$cpu=$_POST['cpu'];
			$cam=$_POST['cam'];
			$pin=$_POST['pin'];
			
			$query=mysqli_query($conn, "update product_detail set ram='$ram', rom='$rom', screen='$manhinh',CPU= '$cpu', camera= '$cam', pin= '$pin', image1= 'images/samsung/$image_name1', image2='images/samsung/$image_name2', image3='images/samsung/$image_name3' where product_id= $id");
			echo "update product_detail set ram='$ram', rom='$rom', screen='$manhinh',CPU= '$cpu', camera= '$cam', pin= '$pin', image1= 'images/samsung/$image_name1', image2='images/samsung/$image_name2', image3='images/samsung/$image_name3' where product_id= $id";
			
		}
	}
	else if($al['hangsx']=='Iphone'){
		if(isset($_POST['ram'])){
			$ram=$_POST['ram'];
			$rom=$_POST['rom'];
			$manhinh=$_POST['manhinh'];
			$cpu=$_POST['cpu'];
			$cam=$_POST['cam'];
			$pin=$_POST['pin'];
			$query=mysqli_query($conn, "update product_detail set ram='$ram', rom='$rom', screen='$manhinh',CPU= '$cpu', camera= '$cam', pin= '$pin', image1= 'images/iphone/$image_name1', image2='images/iphone/$image_name2', image3='images/iphone/$image_name3' where product_id= $id");
			
		}
	}
	else if($al['hangsx']=='Xiaomi'){
		if(isset($_POST['ram'])){
			$ram=$_POST['ram'];
			$rom=$_POST['rom'];
			$manhinh=$_POST['manhinh'];
			$cpu=$_POST['cpu'];
			$cam=$_POST['cam'];
			$pin=$_POST['pin'];
			$query=mysqli_query($conn, "update product_detail set ram='$ram', rom='$rom', screen='$manhinh',CPU= '$cpu', camera= '$cam', pin= '$pin', image1= 'images/xiaomi/$image_name1' , image2='images/xiaomi/$image_name2', image3='images/xiaomi/$image_name3' where product_id= $id");
			
		}
	}
	else if($al['hangsx']=='Huawei'){
		if(isset($_POST['ram'])){
			$ram=$_POST['ram'];
			$rom=$_POST['rom'];
			$manhinh=$_POST['manhinh'];
			$cpu=$_POST['cpu'];
			$cam=$_POST['cam'];
			$pin=$_POST['pin'];
			$query=mysqli_query($conn, "update product_detail set ram='$ram', rom='$rom', screen='$manhinh',CPU= '$cpu', camera= '$cam', pin= '$pin', image1= 'images/huawei/$image_name1' , image2='images/huawei/$image_name2', image3='images/huawei/$image_name3' where product_id= $id");
			if($query){
				header('location: product_detail.php');
			}
			
		}
	}
	else if($al['hangsx']=='Vsmart'){
		if(isset($_POST['ram'])){
			$ram=$_POST['ram'];
			$rom=$_POST['rom'];
			$manhinh=$_POST['manhinh'];
			$cpu=$_POST['cpu'];
			$cam=$_POST['cam'];
			$pin=$_POST['pin'];
			$query=mysqli_query($conn, "update product_detail set ram='$ram', rom='$rom', screen='$manhinh',CPU= '$cpu', camera= '$cam', pin= '$pin', image1= 'images/vsmart/$image_name1' ,image2= 'images/vsmart/$image_name2',image3= 'images/vsmart/$image_name3' where product_id= $id");
			if($query){
				header('location: product.php');
			}
			
		}
	}
	else if($al['hangsx']=='Oppo'){
		if(isset($_POST['ram'])){
			$ram=$_POST['ram'];
			$rom=$_POST['rom'];
			$manhinh=$_POST['manhinh'];
			$cpu=$_POST['cpu'];
			$cam=$_POST['cam'];
			$pin=$_POST['pin'];
			$query=mysqli_query($conn, "update product_detail set ram='$ram', rom='$rom', screen='$manhinh',CPU= '$cpu', camera= '$cam', pin= '$pin', image1= 'images/oppo/$image_name1', image2= 'images/oppo/$image_name2', image3='images/oppo/$image_name3' where product_id= $id");
			if($query){
				header('location: product.php');
			}
			
		}
	}

}


?>

<div class="container">
	<div class="row" style="margin-top: 80px">
		<div class="col-md-3">
			
		</div>
		<div class="col-md-9">
			<?php foreach ($sql as $a){ ?>
				
				<form class="mt-3" method="post" enctype="multipart/form-data">
					<div class="form-row">
						<div class="form-group col-md-4">
							<label for="inputEmail4">RAM</label>
							<input type="text" class="form-control" name="ram" value="<?php echo $a['ram'];?>" placeholder="Vd: 4GB">
						</div>
						<div class="form-group col-md-4">
							<label for="inputPassword4">ROM</label>
							<input type="text" class="form-control" name="rom" placeholder="Vd: 64GB" value="<?php echo $a['rom'];?>" >
						</div>
						<div class="form-group col-md-4">
							<label for="inputPassword4">Màn hình</label>
							<input type="number" class="form-control" name="manhinh" placeholder="Vd: 6.4" value="<?php echo $a['screen'];?>" >
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-4">
							<label for="inputEmail4">CPU</label>
							<input type="text" class="form-control" name="cpu" placeholder="Vd: Snapdragon 8xx" value="<?php echo $a['CPU'];?>" >
						</div>
						<div class="form-group col-md-4">
							<label for="inputPassword4">Camera</label>
							<input type="text" class="form-control" name="cam" placeholder="Vd: 12mp" value="<?php echo $a['camera'];?>" >
						</div>
						<div class="form-group col-md-4">
							<label for="inputPassword4">PIN</label>
							<input type="text" class="form-control" name="pin" placeholder="Vd: 4000mah" value="<?php echo $a['pin'];?>" >
						</div>
					</div>
					<div class="form-group">
						<label for="inputAddress2">Ảnh 1</label>
						<input type="file" class="form-control" name="image1" value="sadsads">
						
						<img src="../<?php echo $a['image1']; ?>" width="140px">
					</div> 
					<div class="form-group">
						<label for="inputAddress2">Ảnh 2</label>
						<input type="file" class="form-control" name="image2">
						<img src="../<?php echo $a['image2']; ?>" width="140px">

					</div> 
					<div class="form-group">
						<label for="inputAddress2">Ảnh 3</label>
						<input type="file" class="form-control" name="image3">
						<img src="../<?php echo $a['image3']; ?>" width="140px">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
					

				</form>
			<?php } ?>
		</div>
	</div>
</div>




<?php include 'footer.php'; ?>
