  var flag=true;
  

  $('.img_1').click(function() {
  	$('.im1').css('display', 'block');
    $('.img_0').css('border', 'none');
  	$('.anh').css('display', 'none');
  	$('.im2').css('display', 'none');
  	$('.im3').css('display', 'none');

  });

  $('.img').click(function() {
    $('.anh').css('display', 'block');
  	$('.im1').css('display', 'none');
  	$('.im2').css('display', 'none');
  	$('.im3').css('display', 'none');

  });
  $('.img_2').click(function() {
    $('.im2').css('display', 'block');
  	$('.anh').css('display', 'none');
  	$('.im1').css('display', 'none');
  	$('.im3').css('display', 'none');
  	

  });

  $('.img_3').click(function() {
  	
  	$('.im3').css('display', 'block');
  	$('.anh').css('display', 'none');
  	$('.im1').css('display', 'none');
  	$('.im2').css('display', 'none');

  });
  $('.img_0').click(function() {
  	
  	$('.anh').css('display', 'block');
  	$('.im3').css('display', 'none');
  	$('.im1').css('display', 'none');
  	$('.im2').css('display', 'none');

  });
  

