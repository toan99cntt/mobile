<?php include '../connect.php';
include 'headers.php';

// $sql= mysqli_query($conn,"select product.tensp, product.gia, product.trangthai, product.ngaynhap, product.image, producer.hangsx from product join producer on product.id_hang=producer.id");
if(isset($_POST['search'])){
	$search= $_POST['search'];
	$sql= mysqli_query($conn,"select * from orders where name like '%$search%' ");
}else{
	$sql= mysqli_query($conn,"select * from orders order by id desc");
}


?>

<div>
	<div class="row mt-5">
	<div class="col-md-2"></div>
	<div class="col-md-9">
		<a href="add_product.php" class="btn btn-primary" title="" style="margin-top: 30px">Thêm mới</a>
		<table class="table table-fluid" id="myTable">
		
			<thead class="thead-dark|thead-light">
				<tr>
					<th scope="col">STT</th>
					<th scope="col">Tên khách hàng</th>
					<th scope="col">Sđt</th>
					<th scope="col">email</th>
					<th scope="col">Tổng đơn hàng</th>
					<th scope="col">Trạng thái</th>
					<th scope="col">Địa chỉ</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<?php $n=1; foreach ($sql as $val) { ?>
					<tr>
						<td><?php echo $n;  ?></td>
						<td><?php echo $val['name']; ?><a href="order_detail.php?id=<?php echo $val['id'] ?>">Chi tiết</a></td>
						<td><?php echo $val['phone'] ?></td>
						<td><?php echo $val['email'] ?></td>
						<td><?php echo $val['total_price']; ?></td>
						<td><?php echo $val['status']? "Đang vận chuyển" : "Hoàn thành"; ?></td>
						<td><?php echo $val['add']; ?></td>
						<td><a href="repair_order.php?id=<?php echo $val['id']; ?>" title=""><i class="fas fa-tools"></i></a>
							<a href="delete_order.php?id=<?php echo $val['id'] ?>" class="btn-danger" title=""><i class="fas fa-trash-alt"></i></a></td>
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