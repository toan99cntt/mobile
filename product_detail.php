<?php 
include 'header.php';
$id= isset($_GET['id']) ? $_GET['id'] : 0;
$sql= "select producer.hangsx as 'hangsx',product_detail.image1,product_detail.image2, product_detail.image3, product.id,product.image, product_detail.screen as 'screen', product_detail.CPU as 'CPU', product_detail.camera as 'camera', product_detail.ram as 'ram', product_detail.rom as 'rom',product.gia, product_detail.pin as'pin', product.tensp as 'tensp', product_detail.detail as 'detail' from producer join product on product.id_hang = producer.id join product_detail on product_detail.id_product = product.id where product.id= $id";
$sp_phu= mysqli_query($conn,"select *from product order by rand() LIMIT 8");
$detail= mysqli_query($conn, $sql);

?>
<div class="container" style="background: #fff;" >
	<p style="font-weight: bold; font-size: 15px;"><i class="fas fa-home"></i> Trang chủ / Điện thoại / <?php foreach ($detail as $val) { echo $val['tensp']; } ?></p>
	<div class="row">
		<div class="col-md-8 p-0 pl-3 pr-3">
			<?php foreach ($detail as $value) { ?>
				<p class="m-0 p-2" style="font-weight: bold; font-size: 18px; border-bottom: 0.7px solid #BCBBBB">Điện thoại <?php echo $value['tensp'] ?></p>
				<div class="row">
					<div class="col-sm-7">
						<img class="img anh" src="<?php echo $value['image']; ?>" width="100%">
						<img class="img im1" src="<?php echo $value['image1']; ?>" width="100%">
						<img class="img im2" src="<?php echo $value['image2']; ?>" width="100%">
						<img class="img im3" src="<?php echo $value['image3']; ?>" width="100%">

						<img class="i img_0" src="<?php echo $value['image']; ?>" width="100%">
						<img class="i img_1" src="<?php echo $value['image1']; ?>" width="100%">
						<img class="i img_2" src="<?php echo $value['image2']; ?>" width="100%">
						<img class="i img_3" src="<?php echo $value['image3']; ?>" width="100%">
					</div>
					<div class="col-sm-5">
						<p class=" m-0 pt-2" style="color: red; font-weight: bold; font-size: 22px"><?php echo number_format($value['gia']); ?></p>
						<label class="btn" style="background: #D5D1D1">
							<input type="checkbox" name="options" id="option2"  checked> Màu sắc: Mặc định
						</label>
						<label class="btn" style="background: #D5D1D1">
							<input type="checkbox" name="options"  checked> Bộ nhớ: <?php echo $val['ram']. "/". $val['rom']."GB"; ?>
						</label>
						<ul style="list-style: none ;border: 1px solid #BCBBBB; padding: 10px; border-radius: 5px;">
							<li>1. Tặng gói: <label style="color: red">Bảo hành vàng 6 tháng</label></li>
							<li>2. Miễn phí dán màn hình 2 lần đầu tiên</li>
						</ul>
						<a href="cart_process.php?id=<?php echo $id; ?>&pro=1" title="" style="background: #f98c46; color: #fff ;width: 100% " class="btn"><label style="font-weight: bold; font-size: 25px">MUA NGAY </label><br><label style="font-size: 15px">Giao hàng tận nơi miễn phí</label></a>

						
					</div>

				</div>
			<?php } ?>
		</div>
		<div class="col-md-4 p-0 pl-3 pr-3">
			<p class="font-weight-bold">Thông số kỹ thuật</p>
			<table class="table table-bordered table-inverse table-hover">
				<tbody>
					<tr>
						<td colspan="1">Hãng sx</td>
						<td><?php echo $value['hangsx'] ?></td>
					</tr>
					<tr>
						<td>Màn hình</td>
						<td><?php echo $value['screen'] ?></td>
					</tr>
					<tr>
						<td>CPU</td>
						<td><?php echo $value['CPU'] ?></td>
					</tr>
					<tr>
						<td>Camera</td>
						<td><?php echo $value['camera'] ?></td>
					</tr>
					<tr>
						<td>PIN</td>
						<td><?php echo $value['pin'] ?></td>
					</tr>
					<tr>
						<td>Ram</td>
						<td><?php echo $value['ram'] ?> GB</td>
					</tr>
					<tr>
						<td>Bộ nhớ</td>
						<td><?php echo $value['rom'] ?> GB</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="col-sm-8 ">
		<?php foreach ($detail as $val) {?>
			<p>Xét về tổng thể thì mẫu <b><?php echo $val['tensp'] ?></b> sở hữu những đường nét thiết kế tinh xảo, trẻ trung và hiện đại. Màn hình kích thước khá lớn 6.4 inch, tương đương với mẫu Galaxy S10+. Tuy nhiên điểm khác biệt là ở kiểu thiết kế mặt trước, mẫu A30 được thiết kế màn hình dạng Infinity U thay vì Infinity O như dòng sản phẩm đàn anh.<br>

				Tìm hiểu về mẫu smartphone <b><?php echo $val['tensp'] ?></b><br><br>

				Tỉ lệ màn hình 19:9 mang lại cho bạn sự trải nghiệm tuyệt với nhất trên một màn hình lớn nhưng vẫn đảm bảo được kích thước tổng thể gọn gàng, dễ cầm nắm.<br><br>

				<b>Màn hình sắc nét</b> <br><br>


				Mẫu <b><?php echo $val['tensp'] ?></b> trang bị tấm nền Super AMOLED thế hệ mới, độ phân giải Full HD+ mang lại những hình ảnh sắc nét, chân thực.<br><br>

				Đối với những bạn trẻ thích chơi game hoặc cày phim thì đây là một sản phẩm rất đáng quan tâm.
<br><br>
				Tìm hiểu về mẫu smartphone <b><?php echo $val['tensp'] ?></b><br><br>

				<b>Cấu hình mạnh mẽ</b> <br><br>

				Bộ vi xử lý của máy là con chip <b><?php echo $val['CPU'] ?></b> cho tốc độ xử lý cao.<br><br>

			Bên cạnh đó máy cũng được trang bị thanh RAM <b><?php echo $val['ram'] ?>gb</b> cùng bộ nhớ <b><?php echo $val['rom'] ?>gb</b>. Với việc hỗ trợ thẻ nhớ mở rộng MicroSD lên đến 512GB thì không gian lưu trữ giờ đây sẽ không còn là vấn đề mà người dùng quá bận tâm nữa.</p>
		<?php } ?>
		<p style="font-weight: bold; font-size: 18px; border-bottom: 0.7px solid #BCBBBB">Sản phẩm tương tự</p>
		<div class="row">
			<?php foreach ($sp_phu as $value) {?>
				<div class="sp2">
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


<?php include 'footer.php' ?>