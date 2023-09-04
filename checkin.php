<?php 
session_start();

	include "db_conn.php";

    $id = $_SESSION['id'];
?>

<!DOCTYPE html>
<html>
<head>
	<title>Check-In</title>
	<link rel="stylesheet" type="text/css" href="stylee.css">
</head>
<body>
    <form action="checkin-check.php" method="post">
		<h2> Check-In </h2>
	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>

     	<?php if (isset($_GET['success'])) { ?>
            <p class="success"><?php echo $_GET['success']; ?></p>
        <?php } ?>


     	<label>Username</label>
		<?php $sql_7 = "SELECT name FROM users WHERE id='$id'";
		$connectDb=mysqli_select_db($conn,'test_web');
		$result = mysqli_query($conn,$sql_7);
		while($row=mysqli_fetch_array($result)){
		?> 
		<input type="text" name="user_name" value="<?php echo $row['name'];?>" >
		<?php } ?> <br>

		<label>Estimated amount of people</label>
		<input type="integer" name="amount" placeholder="Enter amount">
		<br>

		<label>Check in </label> <br>
		<div class="wrapper-class">
		<input type="checkbox" name="visit" value="visit" style="width: auto;" >Confirm Visit
		</div>
		<br>	
		<button type="submit">Submit</button>
    	<a href="maps.php" class="ca">BACK</a>
    </form>
</body>
</html>