<?php include('header.php');


?>
<div class="container mt-4">
	<div class="row">
		<div class="col-md-5">
			<p><i class="fas fa-map-marker-alt"></i> HÀ NỘI</p>
			
			<p>- 20 Lĩnh Nam, Q. Hoàng Mai, Hà Nội</p>
			
			<p>- 218 Lĩnh Nam, Q. Đống Đa, Hà Nội</p>
			<iframe style="border:1px solid #CECDCD; padding: 5px" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.2609315278437!2d105.87370141437746!3d20.982175094744136!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac1fff979959%3A0x2dc5e24b895616f0!2zTmfDtSAyMTggTMSpbmggTmFtLCBWxKluaCBIxrBuZywgSG_DoG5nIE1haSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1604542434938!5m2!1svi!2s" width="100%" height="400px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		</div>		
		<div class="col-md-7">
			<div class="lienhe">
				<p style="font-size: 23px">Liên hệ với chúng tôi: </p>
				<!-- <form> -->
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputEmail4">Email</label>
							<input type="email" class="form-control" id="inputEmail4" placeholder="nguyenvanA@gmail.com">
						</div>
						<div class="form-group col-md-6">
							<label for="inputPassword4">Phone</label>
							<input type="password" class="form-control" id="inputPassword4" placeholder="0987544xxx">
						</div>
					</div>
					<div class="form-group">
						<label for="inputAddress">Address</label>
						<input type="text" class="form-control" id="inputAddress" placeholder="nhà a, ngõ x.....">
					</div>
					<div class="form-group">
						<label for="inputAddress">Tiêu đề </label>
						<input type="text" class="form-control" id="inputAddress" >
					</div>
					<label>Nội dung </label>
					<div class="form-group">
						<textarea class="form-control" style="width: 100%; height: 150px;"></textarea>
					</div>

					<button type="submit" id="btn" style="float: right;" class="btn btn-success ">Gửi</button>
				<!-- </form> -->
			</div>
			<div class="icon">
				<img src="images/dau-tich-1-2-removebg-preview.png" width="100%">

			</div>
			<a href="lienhe.php" class="btn btn-primary btn_" style="float: right;">Quay lại</a>
		</div>
	</div>
</div>



<?php include('footer.php'); ?>