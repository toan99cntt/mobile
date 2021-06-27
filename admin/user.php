<?php 
include 'headers.php';

?>
<?php include '../connect.php';
$sql=mysqli_query($conn, "select *from user");

?>

<div>
	<div class="row mt-5">
		<div class="col-md-3">
			
		</div>
	<div class="col-md-9">
		<a href="add_user.php" class="btn btn-primary" title="" style="margin-top: 30px">Thêm mới</a>
		<table class="table table-fluid" id="myTable">
		
			<thead class="thead-dark|thead-light">
				<tr>
					<th scope="col">STT</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Password</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				
				<?php $n=1; foreach ($sql as $val) { ?>
					<tr>
						<td><?php echo $n;  ?></td>
						
						<td><?php echo $val['username']; ?></td>
						<td><?php echo $val['email'];?></td>
            <td><?php echo $val['password']; ?></td>
						<td><a href="repair_user.php?id=<?php echo $val['id']; ?>" title=""><i class="fas fa-tools"></i></a>
							<a href="delete_user.php?id=<?php echo $val['id'] ?>" style="color: red" title=""><i class="fas fa-trash"></i></a></td>
						</tr>
						<?php $n++; } ?>
					</tbody>
				</table>
			</div>

		</div>





		<?php include 'footer.php';?>