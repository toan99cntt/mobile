<?php include('headers.php');
include '../connect.php';
$id= isset($_GET['id']) ? $_GET['id'] :0;
$user=mysqli_query($conn, "select *from user where id=$id");
if(isset($_POST['username'])){
  $username=$_POST['username'];
  $email=$_POST['email'];
  $password=$_POST['password'];
  $query=mysqli_query($conn, "update user set username='$username',password= '$password',email='$email' where id=$id");
 if($query){
 	header("Location: user.php");
 }

}

?>

<div class="container">
	<div class="row" style="margin-top: 70px">
		<div class="col-md-3">

		</div>
		<div class="col-md-9">
      <?php foreach ($user as $a) {?>
			<form method="POST" enctype="multipart/form-data">
				<div class="form-group">
					<label>Username</label>
					<input type="text" class="form-control" name="username" value="<?php echo $a['username']; ?>">
				</div>
				<div class="form-group">
          <label>Password</label>
          <input type="text" class="form-control" name="password" value="<?php echo $a['password']; ?>">
        </div>
        <div class="form-group">
          <label>Email</label>
          <input type="text" class="form-control" name="email" value="<?php echo $a['email']; ?>">
        </div>
        
				<button type="submit" class="btn btn-primary">Submit</button>
				
				
			</form>
      <?php } ?>
		</div>
	</div>
</div>



<?php include('footer.php'); ?>