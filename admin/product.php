<?php 
include 'headers.php';

?>
<?php include '../connect.php';
// $sql= mysqli_query($conn,"select product.tensp, product.gia, product.trangthai, product.ngaynhap, product.image, producer.hangsx from product join producer on product.id_hang=producer.id");
if(isset($_POST['search'])){
	$search= $_POST['search'];
	$sql= mysqli_query($conn,"select product.id, product.tensp, product.so_luong, product.gia, product.trangthai, product.ngaynhap, product.image, producer.hangsx from product join producer on product.id_hang=producer.id where product.tensp like '%$search%' ");
}else{
	$sql= mysqli_query($conn,"select product.id,product.tensp, product.so_luong , product.gia, product.trangthai, product.ngaynhap, product.image, producer.hangsx from product join producer on product.id_hang=producer.id");
}


?>

<div>
	<div class="row mt-5">
		<div class="col-md-3">
			
		</div>
	<div class="col-md-9">
		<a href="add_product.php" class="btn btn-primary" title="" style="margin-top: 30px">Thêm mới</a>
		<table class="table table-fluid" id="myTable">
		
			<thead class="thead-dark|thead-light">
				<tr>
					<th scope="col">STT</th>
					<th scope="col">Tên SP</th>
					<th scope="col">Ảnh</th>
					<th scope="col">Sl</th>
					<th scope="col">Giá</th>
					<th scope="col">Trạng thái</th>
					<th scope="col">Ngày nhập</th>
					<th scope="col">Hãng sx</th>
				</tr>
			</thead>
			<tbody>
				
				<?php $n=1; foreach ($sql as $val) { ?>
					<tr>
						<td><?php echo $n;  ?></td>
						<td><?php echo $val['tensp']; ?></td>
						<td><img src="../<?php echo $val['image']; ?>"width="70px"></td>
						<td><?php echo $val['so_luong']? $val['so_luong']: 0; ?></td>
						<td><?php echo $val['gia']; ?></td>
						<td><?php echo $val['trangthai']? "Còn hàng" : "Hết hàng"; ?></td>
						<td><?php echo $val['ngaynhap']; ?></td>
						<td><?php echo $val['hangsx']; ?></td>
						<td><a href="repair_product.php?id=<?php echo $val['id']; ?>" title=""><i class="fas fa-tools"></i></a>
							<a href="delete_product.php?id=<?php echo $val['id'] ?>" class="btn-danger" title=""><i class="fas fa-trash-alt"></i></a></td>
						</tr>
						<?php $n++; } ?>
					</tbody>
				</table>
			</div>

		</div>

<script>
	$(document).ready(function(){
		$('#myTable').dataTable();
	});
</script>



		<?php include 'footer.php';?>