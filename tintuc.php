<?php 
include 'header.php';
?>
<div class="container">
	<div class="row banner">
		<div class="col-md-8 p-0">
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img style="height: 320px" class="d-block w-100" src="https://i.ytimg.com/vi/36HnmEcKDJk/maxresdefault.jpg" width="100%" alt="First slide">
					</div>
					<?php foreach ($banner as $a) {?>
						<div class="carousel-item">
							<img style="height: 320px" class="d-block w-100" src="<?php echo $a['image']; ?>"  width="100%" alt="Second slide">
						</div>
					<?php } ?>

				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			
		</div>
		<div class="col-md-4 tit">
			<label>MyPhone mở bán chính thức siêu phẩm Iphone 12 pro max</label>
			<label>Hàng loại mẫu điện thoại mới có mặt tại MyPhone</label>
			<label>Windows 11 xuất hiện bản 'rò rỉ', cài đặt và trải nghiệm ngay.</label>
			<a href="tintuc.php" title="">Tất cả tin tức</a><a href="" title=""> <i class="fas fa-arrow-right"></i> </a>
		</div>
		
	</div>
</div>
<div class="container" style="background: #fff">
	<div class="row">
		<div class="col-md-8 p-0">
			<div class="col-md-12 p-0">
				<div class="row mt-3">
					<div class="col-md-4 image-tt">
						<img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2020/11/ngay-ra-mat-galaxy-s21-1-218x150.jpg" width="100%">
					</div>
					<div class="col-md-8">
						<h4>[HOT] Lộ ngày ra mắt cùng thời điểm mở bán của Samsung Galaxy S21...</h4>
						<label style="font-size: 12px"><i class="far fa-clock"></i> 5 Tháng Mười Một, 2020</label>
						<label style="font-size: 12px; color: #BFBFBF">Sự kiện "One More Thing" của Apple diễn ra vào 11/11/2020 dự kiến ​​sẽ tiết lộ một hoặc nhiều dòng Mac được trang bị...</label>
						
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 image-tt">
						<img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2020/11/smartphone-an-duoi-man-hinh-oppo-1-218x150.png" width="100%">
					</div>
					<div class="col-md-8">
						<h4>[HOT] Lộ bằng chứng cho thấy OPPO chuẩn bị ra mắt mẫu smartphone mới có...</h4>
						<label style="font-size: 12px"><i class="far fa-clock"></i> 5 Tháng Mười Một, 2020</label>
						<label style="font-size: 12px; color: #BFBFBF">Những hình ảnh mới đươc rò rỉ mới đây đã cho thấy chắc chắn OPPO đang lên ý tưởng và nghiên cứu về một...</label>
						
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 image-tt">
						<img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2020/11/maxresdefault-1-218x150.jpg" width="100%">
					</div>
					<div class="col-md-8">
						<h4>[HOT] Loạt sản phẩm Macbook, AirPods và iPad Pro mới dự kiến sẽ được ra...</h4>
						<label style="font-size: 12px"><i class="far fa-clock"></i> 5 Tháng Mười Một, 2020</label>
						<label style="font-size: 12px; color: #BFBFBF">Sự kiện "One More Thing" của Apple diễn ra vào 11/11/2020 dự kiến ​​sẽ tiết lộ một hoặc nhiều dòng Mac được trang bị...</label>
						
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-md-4 image-tt">
						<img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2020/11/thong-tin-nokia-10-pureview-1-218x150.jpg" width="100%">
					</div>
					<div class="col-md-8">
						<h4>[HOT] Nokia 10 PureView bỗng dưng bị “lộ” nhiều thông tin quan trọng: Chạy Snapdragon...</h4>
						<label style="font-size: 12px"><i class="far fa-clock"></i> 5 Tháng Mười Một, 2020</label>
						<label style="font-size: 12px; color: #BFBFBF">Mới đây, nhiều thông tin cực kì hấp dẫn về thông số kĩ thuật của chiếc Nokia 10 PureView bỗng dưng bị "lộ" và...</label>
						
					</div>
				</div>

			</div>
		</div>
		<div class="col-md-4">
			<p style="background: #e11b1e; padding: 3px 3px 3px 5px; color: #fff">BÀI VIẾT ĐÁNG CHÚ Ý</p>
			<div class="col-md-12">
				<div class="row">
					<div class="row mt-3">
						<div class="col-md-4">
							<img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2020/03/nokia-5310-ra-mat-100x70.jpg" width="100%">
						</div>
						<div class="col-md-8">
							<lable style="font-size: 14px">Nokia 5310 quay trở lại, nhưng không còn Xpress Music nữa</lable>
							<label style="font-size: 10px"><i class="far fa-clock"></i> 5 Tháng Mười Một, 2020</label>
						</div>
					</div>
				</div><div class="row">
					<div class="row mt-3">
						<div class="col-md-4">
							<img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2020/04/1-56-100x70.jpg" width="100%">
						</div>
						<div class="col-md-8">
							<lable style="font-size: 14px">Viên pin Galaxy Note 20 sẽ có dung lượng đáng kinh...</lable><br>
							<label style="font-size: 10px"><i class="far fa-clock"></i> 5 Tháng Mười Một, 2020</label>
						</div>
					</div>
				</div><div class="row">
					<div class="row mt-3">
						<div class="col-md-4">
							<img src="https://hoanghamobile.com/tin-tuc/wp-content/uploads/2019/05/xoa-anh-tren-dien-thoai-100x70.jpg" width="100%">
						</div>
						<div class="col-md-8">
							<lable style="font-size: 14px">Đánh giá Realme 3 từng li từng tí trước khi quyết...</lable>
							<label style="font-size: 10px"><i class="far fa-clock"></i> 5 Tháng Mười Một, 2020</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<?php include 'footer.php';?>