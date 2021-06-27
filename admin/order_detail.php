<?php 
include 'headers.php';

?>
<?php include '../connect.php';
$id=isset($_GET['id'])?$_GET['id']:0;

if(isset($_POST['search'])){
	$search= $_POST['search'];
	$sql= mysqli_query($conn,"select * from orders where name like '%$search%' ");
}else{
	$sql= mysqli_query($conn,"select product.tensp, order_detail.id_product, order_detail.detail_price, order_detail.detail_quantity from product join order_detail on product.id=order_detail.id_product where order_detail.id_order=$id order by order_detail.id desc");
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
					<th scope="col">Tên sản phẩm</th>
					<th scope="col">Giá tiền</th>
					<th scope="col">Số lượng</th>
					
				</tr>
			</thead>
			<tbody>
				<?php $n=1; foreach ($sql as $val) { ?>
					<tr>
						<td><?php echo $n;  ?></td>
						<td><?php echo $val['tensp']; ?></td>
						<td><?php echo $val['detail_price'] ?></td>
						<td><?php echo $val['detail_quantity'] ?></td>
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