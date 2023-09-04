<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['name'])) 
{

    include "db_conn.php";


	function validate($data){
       $data= trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

    $id = $_SESSION['id'];
	
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>COVID-19 TEST RESULTS</title>
	<link rel="stylesheet" type="text/css" href="stylee.css">
</head>
<body>
    <form action="covid-check.php" method="post">
     	<h2>Covid-19 Test Results</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>

     	<?php if (isset($_GET['success'])) { ?>
            <p class="success"><?php echo $_GET['success']; ?></p>
        <?php } ?>

     	<label>Name</label>

		<?php $sql_4 = "SELECT name FROM users WHERE id='$id'";
		$connectDb=mysqli_select_db($conn,'users');
		$result = mysqli_query($conn,$sql_4 );
		while($row=mysqli_fetch_array($result)){
		?> 
		<input type="text" name="Name" value="<?php echo $row{'name'};?>">
		<?php } ?> <br>

		<label>Email</label>
     	
		<?php $sql_4 = "SELECT email FROM users WHERE id='$id'";
		$connectDb=mysqli_select_db($conn,'users');
		$result = mysqli_query($conn,$sql_4 );
		while($row=mysqli_fetch_array($result)){
		?> 
		<input type="text" name="Email" value="<?php echo $row{'email'};?>">
		<?php } ?> <br>

     	<label>Date of Diagnosis</label>
		<input type="date" name="date" id="date">		
		<br><br>
		
		<label>Test Result </label> <br>
		<div class="wrapper-class">
		<input type="radio" name="results" value="Positive" > Positive 
		<input type="radio" name="results" value="Negative" > Negative
		
		</div>
		<br>	
     	<button type="submit">Submit</button>
    	<a href="home.php" class="ca">HOME</a>
    </form>
</body>
</html>