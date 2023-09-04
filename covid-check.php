<?php 

session_start();
include "db_conn.php";


if (isset($_POST['Name'])&& isset($_POST['Email']) && isset($_POST['date']) && isset($_POST['results']) ){

	function validate($data){
       $data= trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

    $namec = validate($_POST['Name']);
    $emailc= validate($_POST['Email']);
    $resc = $_POST['results'];
    $date = validate($_POST['date']);
    //date_format($date,"Y/m/d H:i:s");
    $userid = $_SESSION['id'];


    if(empty($namec)){
        header("Location: covid.php?error=The Name is required");
        exit();
      }
      else if(empty($emailc)){
        header("Location: covid.php?error=The Email is required");
        exit();
      } else if(empty($date)){
        header("Location: covid.php?error=The Date is required");
        exit();
      } 
    else{
      $sql_10 = "SELECT date AS recentdate FROM covid WHERE userid='$userid' AND results='Positive' ORDER BY date DESC LIMIT 1;";
      
      $result10 = mysqli_query($conn, $sql_10);

        $i=0;
        $recentdate=0;
        while($rows = mysqli_fetch_assoc($result10)){
          $i++;
          $recentdate= $rows['recentdate'];
          
        }
        
        //echo date('Y-m-d', strtotime($recentdate. ' + 14 days'));
        //echo date('Y-m-d', strtotime($date));
           
        if(strtotime($date) < strtotime($recentdate.  ' + 14 days') && ($resc=="Positive")) {
                header("Location: covid.php?error=Date is not over 14 days after positive covid results!"); 
            }
            else{
                $sql_6 = "INSERT INTO covid(userid, username, useremail, date, results) VALUES('$userid','$namec','$emailc','$date', '$resc')";
                $result6 = mysqli_query($conn, $sql_6);
                if($result6){
                    header("Location: covid.php?success=Your covid results added successfully!");
                }
            }        
    }
  }
     
else{
	header("Location:covid.php?error=Results are required");
	exit();
	}

?>



