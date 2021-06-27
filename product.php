<?php
include('header.php');
$id= isset($_GET['id']) ? $_GET['id']: 0;
$sx= isset($_GET['sx']) ? $_GET['sx']: 0;
$page=1;//khởi tạo trang ban đầu
		$limit=12;//số bản ghi trên 1 trang (2 bản ghi trên 1 trang)
		$arrs_list = mysqli_query($conn,"
			select id from product");
		$total_record = mysqli_num_rows($arrs_list);//tính tổng số bản ghi có trong bảng khoahoc
		$total_page=ceil($total_record/$limit);//tính tổng số trang sẽ chia
		//xem trang có vượt giới hạn không:
		if(isset($_GET["page"]))
			$page=$_GET["page"];//nếu biến $_GET["page"] tồn tại thì trang hiện tại là trang $_GET["page"]
		if($page<1) $page=1; //nếu trang hiện tại nhỏ hơn 1 thì gán bằng 1
		if($page>$total_page) $page=$total_page;//nếu trang hiện tại vượt quá số trang được chia thì sẽ bằng trang cuối cùng

		//tính start (vị trí bản ghi sẽ bắt đầu lấy):
		$start=($page-1)*$limit;
		if($sx==0){
			if($id==0){
				$all= mysqli_query($conn, "select * from product limit $start,$limit ");
			}
			else{
				$all= mysqli_query($conn, "select * from product where id_hang=$id limit $start,$limit");
			}
		}
		else if($sx==1){
			if($id==0){
				$all= mysqli_query($conn, "select * from product order by gia ASC  limit $start,$limit ");
			}
			else{
				$all= mysqli_query($conn, "select * from product  where id_hang=$id order by gia ASC limit $start,$limit");
			}
		}else if($sx==2){
			if($id==0){
				$all= mysqli_query($conn, "select * from product order by gia DESC  limit $start,$limit ");
			}
			else{
				$all= mysqli_query($conn, "select * from product  where id_hang=$id order by gia DESC limit $start,$limit");
			}
		}else if($sx==3){
			if($id==0){
				$all= mysqli_query($conn, "select * from product order by tensp ASC  limit $start,$limit ");
			}
			else{
				$all= mysqli_query($conn, "select * from product  where id_hang=$id order by tensp ASC limit $start,$limit");
			}
		}else if($sx==4){
			if($id==0){
				$all= mysqli_query($conn, "select * from product order by tensp desc  limit $start,$limit ");
			}
			else{
				$all= mysqli_query($conn, "select * from product  where id_hang=$id order by tensp desc limit $start,$limit");
			}
		}
		
//sắp xếp sản phẩm
		$hang= mysqli_query($conn, "select *from producer");
// truy vấn tên hãng điện thoại
		if(isset( $_POST['timkiem'])){
			$timkiem= $_POST['timkiem'];
			$all=mysqli_query($conn, "select * from product where tensp like '%$timkiem%'");
		}

		?>

		<div class="container bg-white">

			<div class="row " style="background: #1c82f9">
				<div class="col-md-3">
					<p style="font-weight: bold; font-size: 15px; color: #fff"><i class="fas fa-home"></i> Trang chủ / Điện thoại</p>
				</div>
				<div class="col-md-9">
					<p class="loc float-right">
						<a href="product.php?id=<?php echo $id; ?>&sx=1" title="">Tăng dần theo giá</a>
						<a href="product.php?id=<?php echo $id; ?>&sx=2" title="">Giảm dần theo giá</a>
						<a href="product.php?id=<?php echo $id; ?>&sx=3" title="">Tăng dần theo tên</a>
						<a href="product.php?id=<?php echo $id; ?>&sx=4" title="">Giảm dần theo tên</a>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2">
					<label class="pt-4" style="font-size: 18px">PHÂN LOẠI</label><br>
					<div class="list-loc">
						<p class="font-weight-bold text-dark ">Điện thoại <a class="float-right up" title=""><i class="fas fa-chevron-up"></i></a><a class="float-right dow"><i class="fas fa-chevron-down"></i></a></p>
						<div class="list">
							<?php foreach ($produer as $value) { ?>
								<p><a href="product.php?id=<?php echo $value['id'] ?>" title=""><?php echo $value['hangsx'] ?></a></p>
							<?php } ?>
						</div>
						<p>Đồng hồ</p>
						<p>Máy tính bảng</p>
						<p>Phụ kiện</p>
					</div>
				</div>
				<div class="col-md-10">
					<div class="row">
						<?php foreach ($all as $value) {?>
							<div class="sp1">
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
					<nav>
						<ul class="pagination">
							<?php for($i=1;$i<=$total_page;$i++){ ?>
								<li style="padding: 3px 10px; border: 1px solid #E6E5E5; background: #fff"><a href="product.php?page=<?php echo $i; ?>"><?php echo $i; ?></a></li>
							<?php } ?>

						</ul>
					</nav>
				</div>

			</div>
		</div>
	<?php include('footer.php'); ?> 
	<script>
		$(document).ready(function(){
			$(".dow").click(function(){
				$(".list").css("display",'none');
				$(".dow").css("display",'none');
				$(".up").css("display",'block');
			});$(".up").click(function(){
				$(".list").css("display",'block');
				$(".up").css("display",'none');
				$(".dow").css("display",'block');
			});
		});
	</script>