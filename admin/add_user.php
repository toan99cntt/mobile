<?php include('headers.php');
include '../connect.php';
$id= isset($_GET['id']) ? $_GET['id'] :0;

if(isset($_POST['username'])){
  $username=$_POST['username'];
  $email=$_POST['email'];
  $password=$_POST['password'];
  $query=mysqli_query($conn,"insert into user(username, email,password) values ('$username', '$email','$password')");
 
}

?>

<div class="container">
	<div class="row" style="margin-top: 70px">
		<div class="col-md-3">

		</div>
		<div class="col-md-9">
 
			<form method="POST" enctype="multipart/form-data">
				<div class="form-group">
					<label>Username</label>
					<input type="text" class="form-control" name="username" >
				</div>
				<div class="form-group">
          <label>Password</label>
          <input type="text" class="form-control" name="password">
        </div>
        <div class="form-group">
          <label>Email</label>
          <input type="text" class="form-control" name="email" >
        </div>
        
				<button type="submit" class="btn btn-primary">Submit</button>
				
				
			</form>
    
		</div>
	</div>
</div>



<?php include('footer.php'); ?>