<?php 
session_start(); 
include "db_conn.php";

if (isset($_POST['name']) && isset($_POST['password'])
     && isset($_POST['re_password'])&& isset($_POST['email']) ) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	
	$pass = validate($_POST['password']);
	$re_pass = validate($_POST['re_password']);
    $email = validate($_POST['email']);
	$name = validate($_POST['name']);


	$user_data =  '&name='. $name ;
	
	
	$uppercase = preg_match('@[A-Z]@', $pass);
	$lowercase = preg_match('@[a-z]@', $pass);
	$number    = preg_match('@[0-9]@', $pass);
	$specialChars = preg_match('@[^\w]@', $pass);

	if(empty($name) && empty($pass) && empty($re_pass) && empty($email)){
        header("Location: signup.php?error=All boxes are required&$user_data");
	    exit();
	}
	else if(empty($name)){
		header("Location: signup.php?error=Name is required&$user_data");
	    exit();
	}
	else if(empty($pass) ||!$uppercase || !$lowercase || !$number || !$specialChars || strlen($pass) < 8 ){
        header("Location: signup.php?error=Enter valid password. Password should be at least 8 characters in length and should include at least one upper case letter, one number, and one special character.&$user_data");
	    exit();
	}
	else if(empty($re_pass)){
        header("Location: signup.php?error=The confirmation password is required&$user_data");
	    exit();
	}
    else if(empty($email)){
        header("Location: signup.php?error=email is required&$user_data");
	    exit();
	}

	else if($pass !== $re_pass){
        header("Location: signup.php?error=The confirmation password  does not match&$user_data");
	    exit();
	}

	else{

		// hashing the password
        $pass = md5($pass);

	    $sql = "SELECT * FROM users WHERE name='$name' ";
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0) {
			header("Location: signup.php?error=The username is taken try another&$user_data");
	        exit();
		}else {
           $sql2 = "INSERT INTO users(password, name, email) VALUES('$pass', '$name','$email')";
           $result2 = mysqli_query($conn, $sql2);
           if ($result2) {
           	 header("Location: signup.php?success=Your account has been created successfully");
	         exit();
           }else {
	           	header("Location: signup.php?error=unknown error occurred&$user_data");
		        exit();
           }
		}
	}

}
	
else{
	header("Location: signup.php");
	exit();
}