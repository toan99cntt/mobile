<?php 
include 'header.php';
$carts= isset($_SESSION['cart']) ? $_SESSION['cart'] : [];

?>
<div class="container">
	<div>
		<div>
			<table class="table table-striped|table-dark|table-bordered|table-borderless|table-hover|table-sm">

				<thead class="thead-dark|thead-light">
					<tr>
						<th>STT</th>
						<th scope="col">Ảnh sản phẩm</th>
						<th scope="col">Tên sản phẩm</th>
						<th scope="col">Số lượng</th>
						<th scope="col">Đơn giá</th>
					</tr>
				</thead>
				<tbody>
					<?php $n=1; $tongtien=0; foreach ($carts as $val) {?>
						<tr>
							<?php $sum= $val['quantity'] * $val['gia']; ?>
							<td><?php echo $n ?></td>
							<td><img width="80px" src="<?php echo $val['image']; ?>"></td>
							<td><?php echo $val['tensp']; ?></td>
							<td>
								<form action="cart_process.php">
									<input type="hidden" name="id" value="<?php echo $val['id']; ?>">
									<input type="hidden" name="pro" value="2">
									<input type="number" name="quantity" value="<?php echo $val['quantity']; ?>" style="width: 50px">
									<button style="border: none" type="submit"><i class="fas fa-sync-alt"></i></button>
								</form>
							</td>
							<td><?php echo number_format($sum); ?>đ</td>
							<td><a href="delete_cart.php?id=<?php echo $val['id']; ?>" title=""><i class="fas fa-trash-alt"></i></a></td>
						</tr>
						<?php $n++; $tongtien +=$sum; } ?>
					</tbody>
					<tr>
						<td style="color: red; font-weight: bold;">Tổng: <?php echo number_format($tongtien); ?>đ</td>
						<td></td>
						<td></td>
						<td></td>
						<td><a href="<?php if(isset($_SESSION['username'])){echo "cart.php";} 
						else{echo "login/index.php";} ?>" class="btn btn-primary" title="">Đặt hàng</a></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<?php include 'footer.php'; ?>