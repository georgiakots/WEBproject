<?php 
session_start(); 
include "db_conn.php";


if (isset($_POST['name']) && isset($_POST['password']) && isset($_POST['Role']) ) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$name = validate($_POST['name']);
	$pass = validate($_POST['password']);
	$role = ($_POST['Role']);


	// echo "<p>This is a variable $role</p>";

	

	// if(isset($_POST['Role'])) {
	// 	$role = $_POST['Role'];
	//   }


	if (empty($name)) {
		header("Location: index.php?error=Name is required");
	    exit();
	}else if(empty($pass)){
        header("Location: index.php?error=Password is required");
	    exit();
	}else{


		if ($role === "Admin"){
			$sql1="SELECT * FROM admin_db WHERE name='$name'";
			$result1=mysqli_query($conn, $sql1);
			if (mysqli_num_rows($result1) === 1) {
				$row1= mysqli_fetch_assoc($result1);
				if ( $row1['password'] === $pass && $row1['name'] === $name) {
					$_SESSION['name'] = $row1['name'];
					$_SESSION['id'] = $row1['id'];
					header("Location: admin.php");
					exit();
				}else{
					header("Location: index.php?error=Incorect Name or password");   
					exit();
				}
			}else{
				header("Location: index.php?error=Incorect Name or password");
				exit();
			}
		}

		else{
	
	

		// hashing the password
        $pass = md5($pass);

        
		$sql = "SELECT * FROM users WHERE name='$name' AND password='$pass'";
		

		$result = mysqli_query($conn, $sql);
		

		if (mysqli_num_rows($result) === 1) {
			$row = mysqli_fetch_assoc($result);
            if ($row['name'] === $name && $row['password'] === $pass) {
            	$_SESSION['name'] = $row['name'];
            	$_SESSION['id'] = $row['id'];
            	header("Location: home.php");
		        exit();
            }else{
				header("Location: index.php?error=Incorect User name or password");
		        exit();
			}
		}else{
			header("Location: index.php?error=Incorect User name or password");
	        exit();
		}
	}
}
}
else{
	header("Location: index.php");
	exit();
}

?>

