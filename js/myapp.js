

// jquery search in menu section


var flag = true;
$('#tiSearch').click(function() {
	if (flag) {
		$('.searchMenu').css('display', 'block');
		flag=false;
	}else {
		$('.searchMenu').css('display', 'none');
		flag=true;
	}
	
});

$('.control_1').click(function() {
	if (flag) {
		$('.content_1').css('display', 'block');
		$('.ic1').addClass('fa-minus');
		$('.ic1').removeClass('fa-plus');
		flag=false;
	}else {
		$('.content_1').css('display', 'none');
		$('.ic1').addClass('fa-plus');
		$('.ic1').removeClass('fa-minus');;
		flag=true;
	}
});
$('.control_2').click(function() {
	if (flag) {
		$('.content_2').css('display', 'block');
		$('.ic2').addClass('fa-minus');
		$('.ic2').removeClass('fa-plus');
		flag=false;
	}else {
		$('.content_2').css('display', 'none');
		$('.ic2').addClass('fa-plus');
		$('.ic2').removeClass('fa-minus');;
		flag=true;
	}
});
$('.control_3').click(function() {
	if (flag) {
		$('.content_3').css('display', 'block');
		$('.ic3').addClass('fa-minus');
		$('.ic3').removeClass('fa-plus');
		flag=false;
	}else {
		$('.content_3').css('display', 'none');
		$('.ic3').addClass('fa-plus');
		$('.ic3').removeClass('fa-minus');;
		flag=true;
	}
});
// like button in detail page
var flag = true;
$('#heart').click(function() {
	if (flag) {
		$('.fa-heart').css('color', 'red');
		flag=false;
	}else {
		$('.fa-heart').css('color','#fff');
		flag=true;
	}
	
});

// click small img on detail page
$(document).ready(function() {
	$('.thumbnail img').click(function() {
		$('#productImage').attr('src', $(this).attr('src').replace('60/60', '400/200'));
	});

});

// countdown section
var h=2;
var m=30;
var s=18;
function start(){
	if (s === -1){
		m -= 1;
		s = 59;
	}
	if (m === -1){
		h -= 1;
		m = 59;
	}
	if (h == -1){
		clearTimeout(timeout);
		alert('Hết giờ');
		return false;
	}
	$('#h').html(h);
	$('#m').html(m);
	$('#s').html(s);
	timeout = setTimeout(function(){
		s--;
		start();
	}, 1000);
};
start();


// peplay comment section
var flag=true;
$('#reply').click(function() {
	if (flag) {
		$('.writeCmt').css('display', 'block');
		flag=false;
	}else {
		$('.writeCmt').css('display', 'none');
		flag=true;
	}
});

$('#send').click(function() {
	var cmt = $('#textCmt').val();
	var name = $('.writeCmt input').val();
	$('.writeCmt').css('display', 'none');
	$('#showCmt').html(name);
	$('#showCmt1').html(cmt);
});

// checkout form section
$('#addressDel').click(function() {

	var fname= $('#fName').val();
	var lname= $('#lName').val();
	var email=$('#eMail').val();
	var provin= $('#province').val();
	var city= $('#city').val();
	var addr= $('#addr').val();
	var zip= $('#zipCode').val();
	var phone= $('#phone').val();
	var name=/^[a-zA-Z0-9]{3,20}$/;
	var mail=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})$/;
	var pNumber= /^[0][9|8|3][0-9]{8}$/;
	var flag= true;
	var a,b,c,d,e,f,g,h;
	if(fname=='' || !name.test(fname)){
		$('#fName').addClass('error');
		$('#er1').removeClass('err')
		return false;
	}
	else{
		$('#fName').css('border', '1px solid #ced4da');
		$('#er1').addClass('err');
		a=1;
	}

	if(lname=='' || !name.test(lname)){
		$('#lName').addClass('error');
		$('#er2').removeClass('err')
		return false;
	}
	else{
		$('#lName').css('border', '1px solid #ced4da');
		$('#er2').addClass('err');
		b=1;
	}

	if(email=='' || !mail.test(email)){
		$('#eMail').addClass('error');
		$('#er3').removeClass('err')
		return false;
	}
	else{
		$('#eMail').css('border', '1px solid #ced4da');
		$('#er3').addClass('err');
		c=1;
	}

	if(provin=='' || !name.test(provin)){
		$('#province').addClass('error');
		$('#er4').removeClass('err')
		return false;
	}
	else{
		$('#province').css('border', '1px solid #ced4da');
		$('#er4').addClass('err');
		d=1;
	}

	if(city=='' || !name.test(city)){
		$('#city').addClass('error');
		$('#er5').removeClass('err')
		return false;
	}
	else{
		$('#city').css('border', '1px solid #ced4da');
		$('#er5').addClass('err');
		e=1;
	}

	if(addr=='' || !name.test(addr)){
		$('#addr').addClass('error');
		$('#er6').removeClass('err')
		return false;
	}
	else{
		$('#addr').css('border', '1px solid #ced4da');
		$('#er6').addClass('err');
		f=1;
	}

	if(zip==''){
		$('#zipCode').addClass('error');
		$('#er7').removeClass('err')
		return false;
	}
	else{
		$('#zipCode').css('border', '1px solid #ced4da');
		$('#er7').addClass('err');
		g=1;
	}

	if(phone=='' || !pNumber.test(phone)){
		$('#phone').addClass('error');
		$('#er8').removeClass('err')
		return false;
	}
	else{
		$('#phone').css('border', '1px solid #ced4da');
		$('#er8').addClass('err');
		h=1;
	}
	
	if(a==1&&b==1&&c==1&&d==1&&e==1&&f==1&&g==1&&h==1){
		$('.addressDel').addClass('err');
		$('.payment').css('display', 'block');
		$('.step1').css({
			border: 'none',
			color: '#E6E4E4'
		});
		$('.step2').addClass('step');
		$('.step2').removeClass('_step');
		return true;
	}
});
// payment section
$('#ok').click(function() {
	if($('#checkCod').is(":checked")){
		$('.debit').css('display', 'none');
		$('.payment').css('display', 'none');
		$('.orderC').css('display', 'block');
		$('.step2').addClass('_step');
		$('.step2').removeClass('step');	
		$('.step3').addClass('step');
		$('.step3').removeClass('_step');
		sessionStorage.removeItem('pro');
		sessionStorage.removeItem('count');
		sessionStorage.removeItem('total');
	}
});
$('#order').click(function() {

	var acc= $('#acc').val();
	var serial= $('#serial').val();
	var id=$('#idCard').val();
	var name=/^[a-zA-Z]{3,20}$/;
	var id_serial=/^[A-Z0-9]{3,14}$/;
	var flag= true;
	var a,b,c;
	if(acc=='' || !name.test(acc)){
		$('#acc').addClass('error');
		$('#err1').removeClass('err')
		return false;
	}
	else{
		$('#acc').css('border', '1px solid #ced4da');
		$('#err1').addClass('err');
		a=1;
	}

	if(serial=='' || !id_serial.test(serial)){
		$('#serial').addClass('error');
		$('#err2').removeClass('err')
		return false;
	}
	else{
		$('#serial').css('border', '1px solid #ced4da');
		$('#err2').addClass('err');
		b=1;
	}

	if(id=='' || !id_serial.test(id)){
		$('#idCard').addClass('error');
		$('#err3').removeClass('err')
		return false;
	}
	else{
		$('#idCard').css('border', '1px solid #ced4da');
		$('#err3').addClass('err');
		c=1;
	}

	if(a==1&&b==1&&c==1){
		$('.payment').css('display', 'none');
		$('.orderC').css('display', 'block');
		$('.step2').addClass('_step');
		$('.step2').removeClass('step');	
		$('.step3').addClass('step');
		$('.step3').removeClass('_step');
		sessionStorage.removeItem('pro');
		sessionStorage.removeItem('count');
		sessionStorage.removeItem('total');
		return true;
	}
	
});

// about page section
$('.b1').click(function(event) {
	$('.history').css('display', 'block');
	$('.technology').css('display', 'none');
	$('.about').css('display', 'none');
});
$('.b2').click(function(event) {
	/* Act on the event */
	$('.technology').css('display', 'block');
	$('.history').css('display', 'none');
	$('.about').css('display', 'none');
});
$('.a').click(function(event) {
	/* Act on the event */
	$('.technology').css('display', 'none');
	$('.history').css('display', 'none');
	$('.about').css('display', 'block');
});

$('.btn1').click(function(event) {
	/* Act on the event */
	var mail= $('#inputEmail4').val();
	var sdt= $('#inputPhone').val();
	var name_= $('#inputName').val();
	var code= $('#inputZip').val();
	var m=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var p=/^((09|03|07|08|05)+([0-9]{8}))$/;
	var _cde=/^([0-9]){4,8}$/;
	var n=/^([a-z]){8,15}$/;
	var a,b,c,d;
	if(mail=='' || !m.test(mail) ){
		$('#inputEmail4').css('border', '1px solid red');
		$('#err1').addClass('error');
		return false;
	}
	else{
		$('#inputEmail4').css('border', '1px solid #ced4da');
		$('#err1').removeClass('error');
		a=1;
	}
	if(sdt=='' || !p.test(sdt)){
		$('#inputPhone').css('border', '1px solid red');
		$('#err2').addClass('error');
		return false;
	}
	else {
		$('#inputPhone').css('border', '1px solid #ced4da');
		$('#err2').removeClass('error');
		b=2;
	}
	if (name_=='' || !n.test(name_)) {
		$('#inputName').css('border', '1px solid red');
		$('#err3').addClass('error');
		return false;
	}
	else{
		$('#inputName').css('border', '1px solid #ced4da');
		$('#err3').removeClass('error');
		c=3

	}
	if(code=='' || !_cde.test(code)){
		$('#inputZip').css('border', '1px solid red');
		$('#err4').addClass('error');
		return false;

	}
	else{
		$('#inputZip').css('border', '1px solid #ced4da');
		$('#err4').removeClass('error');
		d=4;
	}
	if(a==1&&b==2&&c==3&&d==4){
		$('.form_').css('display', 'none');
		$('.img').css('display', 'block');
		return true;
	}

});

$('.send').click(function(event) {
	/* Act on the event */
	$('.form_').css('display', 'block');
	$('.img').css('display', 'none');
});

// sing in section
$('#submit').click(function(event) {

	var name= $('#usname').val();
	var _mail=$('#mail').val();
	var pw= $('#password').val();
	var rpw= $('#repassword').val();
	var n=/^[a-z0-9]{8,15}$/;
	var m=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var p=/^([a-zA-Z0-9]){8,15}$/;
	var flag= true;
	var a,b,c,d;
	if(name=='' || !n.test(name)){
		$('#usname').css('border', '1px solid red');
		$('#err1').addClass('error');
		return false;
	}
	else{
		$('#usname').css('border', '1px solid #ced4da');
		$('#err1').removeClass('error');
		a=1;
		
		
	}
	if(_mail=='' || !m.test(_mail)){
		$('#mail').css('border', '1px solid red');
		$('#err2').addClass('error');
		return false;

		
	}
	else{
		$('#mail').css('border', '1px solid #ced4da');
		$('#err2').removeClass('error');
		b=2
		

		
	}
	if(pw=='' || !p.test(pw)){
		$('#password').css('border', '1px solid red');
		$('#err3').addClass('error');
		return false;
	}
	else{
		$('#password').css('border', '1px solid #ced4da');
		$('#err3').removeClass('error');
		c=3;
	}
	if(pw != rpw){
		$('#repassword').css('border', '1px solid red');
		$('#err4').addClass('error');
		return false;
	}
	else{
		$('#repassword').css('border', '1px solid #ced4da');
		$('#err4').removeClass('error');
		d=4;
	}
	if(a==1&&b==2&&c==3&&d==4){
		alert('Sign Up Success!');
		sessionStorage.setItem('uname', name);
		sessionStorage.setItem('_pw',pw);
		window.location.reload();
		return true;
	}
});
$('#login').click(function(event) {
	/* Act on the event */
	var _name= $('#_usname').val();
	var pass= $('#_pword').val();
	var _name1= sessionStorage.getItem('uname');
	if(_name==sessionStorage.getItem('uname') && pass==sessionStorage.getItem('_pw')){
		$('#err5').removeClass('error');	
		return true;
	}
		else{
			$('#err5').addClass('error');
		return false;
	}
	
});
// checkout section
$('#checkout').click(function() {
	if (JSON.parse(sessionStorage.getItem("total"))==0||JSON.parse(sessionStorage.getItem("total"))==null) {
		document.querySelector('#checkout').setAttribute('href', '');
	}
});

// angularjs section
var app = angular.module('project', ['ngRoute']);
app.controller('projectCtrl',function ($scope,$http,$filter,$route) {
	$http.get('data/products.json')
	.then(function (res) {
		$scope.products = res.data;
		$scope.sort ='';
		// show modal
		$scope.modalShow = function (info) {
			$('#modal-1').modal('show');
			$scope.showInfo = info;
		}

		$scope.compare = function (cp) {
			$('#modal-2').modal('show');
			$scope.comp = cp;
		}
		$scope.showLike = function (like) {
			$('#modal-like').modal('show');
			$scope.love = like;
		}
		
		$scope._name1= sessionStorage.getItem('uname');
		// PAGINATION SECTION
		$scope.currentPage = 0;
		$scope.pageSize = 4;
		$scope.data = [];
		$scope.numberOfPages=function(){
			return Math.ceil($scope.data.length/$scope.pageSize);                
		}
		for (var i=0; i<100; i++) {
			$scope.data.push("It "+i);
		}

        // reload page product when click menu in product page
        
        $scope.reload = function () {
        	window.location.reload();
        }
        
        // create sessionStorage for products page
        $scope.allShoes = function () {
        	sessionStorage.removeItem('allshoes');
        	var allS =[];
        	var all = 'Shoes';
        	for (var i = 0; i < $scope.products.length; i++) {
        		if ($scope.products[i].category == all) {
        			allS.push($scope.products[i]);
        		}
        	}
        	sessionStorage.setItem('allshoes', angular.toJson(allS));			
        }

        $scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// men shoes
		$scope.menShoes = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Shoes';
			var condition_2 = 'Men';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].sex == condition_2) {
					allS.push($scope.products[i]);
					console.log(allS);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// women shoes
		$scope.womenShoes = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Shoes';
			var condition_2 = 'Women';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].sex == condition_2) {
					allS.push($scope.products[i]);
					console.log(allS);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// sport shoes
		$scope.sportShoes = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Shoes';
			var condition_2 = 'Sport';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].type == condition_2) {
					allS.push($scope.products[i]);
					console.log(allS);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// life style shoes
		$scope.lifeShoes = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Shoes';
			var condition_2 = 'Life style';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].type == condition_2) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// performance shoes
		$scope.perShoes = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Shoes';
			var condition_2 = 'Performance';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].collection == condition_2) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));

		// original shoes
		$scope.oriShoes = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Shoes';
			var condition_2 = 'Original';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].collection == condition_2) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));

		// clothing products
		$scope.allClo = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Clothing';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));

		// men clothing
		$scope.cloMen = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Clothing';
			var condition_2 = 'Men';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].sex == condition_2) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// women clothing
		$scope.cloWomen = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Clothing';
			var condition_2 = 'Women';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].sex == condition_2) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// sporrt clothing
		$scope.cloSport = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Clothing';
			var condition_2 = 'Sport';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].type == condition_2) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// life style clothing
		$scope.cloLife = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Clothing';
			var condition_2 = 'Life style';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1 && $scope.products[i].type == condition_2) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));

		// accessories
		$scope.acc = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Accessories';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].category == condition_1) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// adidas product
		$scope.adidas = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Adidas';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].brand == condition_1) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// nike products
		$scope.nike = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Nike';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].brand == condition_1) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		// puma products
		$scope.puma = function () {
			sessionStorage.removeItem('allshoes');
			var allS =[];
			var condition_1 = 'Puma';
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].brand == condition_1) {
					allS.push($scope.products[i]);
				}
			}
			sessionStorage.setItem('allshoes', angular.toJson(allS));
		}

		$scope.allS = angular.fromJson(sessionStorage.getItem('allshoes'));
		
		// $scope.adidas = function () {
		// 	var adidas = 'Adidas';
		// 	var item =[];
		// 	for (var i = 0; i < $scope.allS.length; i++) {
		// 		if ($scope.allS[i].brand == adidas) {
		// 			item.push($scope.allS[i]);
		// 		}
		// 	}
		// 	$scope.allS = item;
		// }


		// create sessionStorage for detail product page
		$scope.showDetail = function (detail) {
			for (var i = 0; i < $scope.allS.length; i++) {
				if ($scope.allS[i].id == detail) {
					console.log($scope.allS[i]);
					sessionStorage.setItem('detail', angular.toJson($scope.allS[i]));
				}
			}
		}
		$scope.tt = angular.fromJson(sessionStorage.getItem('detail'));

		$scope.showDt = function (dt) {
			for (var i = 0; i < $scope.products.length; i++) {
				if ($scope.products[i].id == dt) {
					console.log($scope.products[i]);
					sessionStorage.setItem('detail', angular.toJson($scope.products[i]));
				}
			}
		}
		$scope.tt = angular.fromJson(sessionStorage.getItem('detail'));
		// cart section
		$scope.total = 0;
		$scope.cou = 0;
		$scope.carts = [];
		if (JSON.parse(sessionStorage.getItem("total"))!=null)
		{
			$scope.total = parseFloat(JSON.parse(sessionStorage.getItem("total")));
		};
		if (JSON.parse(sessionStorage.getItem("pro"))!=null)
		{
			$scope.carts = JSON.parse(sessionStorage.getItem("pro"));
		};
		if (JSON.parse(sessionStorage.getItem("count"))!=null)
		{
			$scope.cou = JSON.parse(sessionStorage.getItem("count"));
		};

		$scope.addCart = function(sp) {
			if ($scope.carts.length == 0) {
				sp.count =1;
				$scope.carts.push(sp);
			}else{
				var flag = false;
				for (var i = 0; i < $scope.carts.length; i++) {
					if ($scope.carts[i].id == sp.id) {
						flag = true;
						$scope.carts[i].count += 1;
					}
				}
				if (!flag) {
					sp.count =1;
					$scope.carts.push(sp);
				}
			}
			sessionStorage.setItem('pro', angular.toJson($scope.carts));
			$scope.total += parseFloat(sp.price);
			$scope.cou += 1;
			alert('Add cart completed!!!');
			sessionStorage.setItem('count', angular.toJson($scope.cou));
			sessionStorage.setItem('total', angular.toJson($scope.total));
		}
		$scope.deleteProduct = function(sp) {
			for (var i = 0; i < $scope.carts.length; i++) {
				if ($scope.carts[i].id == sp.id) {
					$scope.carts.splice(i, 1);
					
				}
			}
			sessionStorage.setItem('pro', angular.toJson($scope.carts));
			$scope.total -= parseFloat(sp.price*sp.count);
			$scope.cou -= sp.count;
			alert('delete completed!!!');
			sessionStorage.setItem('count', angular.toJson($scope.cou));
			sessionStorage.setItem('total', angular.toJson($scope.total));
		}
		$scope.incre = function (sp) {
			$scope.carts.count = sp.count++;
			$scope.total += parseFloat(sp.price);
			$scope.cou += 1;
			sessionStorage.setItem('count', angular.toJson($scope.cou));
			sessionStorage.setItem('pro', angular.toJson($scope.carts));
			sessionStorage.setItem('total', angular.toJson($scope.total));
		}
		$scope.decre = function (sp) {
			if (sp.count > 1) {
				$scope.carts.count = sp.count--;
				$scope.total -= parseFloat(sp.price);
				$scope.cou -= 1;
				sessionStorage.setItem('count', angular.toJson($scope.cou));
				sessionStorage.setItem('pro', angular.toJson($scope.carts));
				sessionStorage.setItem('total', angular.toJson($scope.total));
			}
			
		}
		$scope.codeSale = function () {
			if ($scope.sale=='SALE50%') {
				$scope.total = $scope.total*0.5;
				$scope.msg = '';
			}else {
				$scope.msg = "Enter the wrong code";
			}

		}
		// favorite cart
		$scope.likes = [];
		$scope.couLike = 0;
		if (JSON.parse(sessionStorage.getItem("likes"))!=null)
		{
			$scope.likes = JSON.parse(sessionStorage.getItem("likes"));
		};
		if (JSON.parse(sessionStorage.getItem("couLike"))!=null)
		{
			$scope.couLike = JSON.parse(sessionStorage.getItem("couLike"));
		};
		$scope.addLike = function(ss) {
			if ($scope.likes.length == 0) {
				$scope.likes.push(ss);
				$scope.couLike += 1;
				sessionStorage.setItem('couLike', angular.toJson($scope.couLike));
			}else{
				var flag = false;
				for (var i = 0; i < $scope.likes.length; i++) {
					if ($scope.likes[i].id == ss.id) {
						flag = true;
						$scope.likes.splice(i, 1);
						$scope.couLike -= 1;
						sessionStorage.setItem('couLike', angular.toJson($scope.couLike));
					}
				}
				if (!flag) {
					$scope.likes.push(ss);
					$scope.couLike += 1;
					sessionStorage.setItem('couLike', angular.toJson($scope.couLike));
				}
			}
			sessionStorage.setItem('likes', angular.toJson($scope.likes));
		}
		$scope.deleteLike = function(sss) {
			for (var i = 0; i < $scope.likes.length; i++) {
				if ($scope.likes[i].id == sss.id) {
					$scope.likes.splice(i, 1);
					
				}
			}
			$scope.couLike -= 1;
			$('.fa-heart').css('color','#fff');
			sessionStorage.setItem('couLike', angular.toJson($scope.couLike));
			sessionStorage.setItem('likes', angular.toJson($scope.likes));
		}

	})
});
app.filter('startFrom', function() {
	return function(input, start) {
		start = +start; 
		return input.slice(start);
	}
});


