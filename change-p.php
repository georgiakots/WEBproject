<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['name'])) {

    include "db_conn.php";

if (isset($_POST['op']) && isset($_POST['np']) && isset($_POST['c_np'])) 
{

	function validate($data1){
       $data1= trim($data1);
	   $data1 = stripslashes($data1);
	   $data1 = htmlspecialchars($data1);
	   return $data1;
	}

	$op = validate($_POST['op']);
	$np = validate($_POST['np']);
	$c_np = validate($_POST['c_np']);

	$uppercase = preg_match('@[A-Z]@', $np);
	$lowercase = preg_match('@[a-z]@', $np);
	$number    = preg_match('@[0-9]@', $np);
	$specialChars = preg_match('@[^\w]@', $np);

    
    if(empty($op)){
      header("Location: change-p.php?error=Old Password is required");
	  exit();
    }
	else if(empty($np) ||!$uppercase || !$lowercase || !$number || !$specialChars || strlen($np) < 8 ){
        header("Location: change-p.php?error=Enter valid new password. Password should be at least 8 characters in length and should include at least one upper case letter, one number, and one special character");
	    exit();
	}
	
	//else if(empty($np)){
      //header("error=New Password is required");
	  //exit();
    else if($np !== $c_np){
      header("Location: change-p.php?error=The confirmation password  does not match");
	  exit();
    }
	
	else {
    	// hashing the password
    	$op = md5($op);
    	$np = md5($np);
        $id = $_SESSION['id'];

        $sql_1 = "SELECT password
                FROM users WHERE 
                id='$id' AND password='$op'";
        $result = mysqli_query($conn, $sql_1);
        if(mysqli_num_rows($result) === 1){
        	
        	$sql_3 = "UPDATE users
        	          SET password='$np'
        	          WHERE id='$id'";
        	mysqli_query($conn, $sql_3);
        	header("Location: change-p.php?success=Your password has been changed successfully");
	        exit();

        }else {
        	header("Location: change-p.php?error=Incorrect password");
	        exit();
        }

    }

}
}


if (isset($_SESSION['id']) && isset($_SESSION['name'])) {}

 ?>
<!DOCTYPE html>
<html>
<head>
	<title>CHANGE PASSWORD</title>
	<link rel="stylesheet" type="text/css" href="stylee.css">
</head>
<body>
    <form action="change-p.php" method="post">
     	<h2>Change Password</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>

     	<?php if (isset($_GET['success'])) { ?>
            <p class="success"><?php echo $_GET['success']; ?></p>
        <?php } ?>

     	<label>Old Password</label>
     	<input type="password" 
     	       name="op" 
     	       placeholder="Old Password">
     	       <br>

     	<label>New Password</label>
     	<input type="password" 
     	       name="np" 
     	       placeholder="New Password">
     	       <br>

     	<label>Confirm New Password</label>
     	<input type="password" 
     	       name="c_np" 
     	       placeholder="Confirm New Password">
     	       <br>

     	<button type="submit">CHANGE</button>
          <a href="change_profile.php" class="ca">BACK</a>
     </form>
</body>
</html>

		