<?php 

session_start();
include "db_conn.php";



if (isset($_POST['user_name'])&& isset($_POST['amount']) && isset($_POST['visit'])){

	function validate($data){
       $data= trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

    $username = validate($_POST['user_name']);
    $amount= validate($_POST['amount']);
    $visit = $_GET['visit'];
    $user_id = $_SESSION['id'];

    date_default_timezone_set('Europe/Athens');
    $date = date('y-m-d h:i:s', time());

   
        $sql_9 = "INSERT INTO checkin (user_id, user_name, date, amount, visit) VALUES('$user_id','$username', '$date', '$amount', '$visit')";
          $result9 = mysqli_query($conn, $sql_9);
          if($result9){
            header("Location: checkin.php?success=Your covid results added successfully!");
          }

    

}

else{

	header("Location: checkin.php?error= The Visit is required ");
	exit();
}
?>