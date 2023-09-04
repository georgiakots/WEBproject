<?php
session_start();
include 'db_conn.php';
//$_POST['id']=$_SESSION['id'];

if(isset($_GET['id'])){
   $id= $_GET['id'];
        echo  $id;
   $conn=new mysqli($sname, $unmae, $password, $db_name);
	$sql = "DELETE * FROM places WHERE id='$id'";
   $res = mysqli_query($conn,$sql);
   if ($res) {
   	  header("Location:show-data.php?success=Record POI successfully deleted");
         exit();
   }else {
      header("Location:show-data.php?error=unknown error occurred");
   }

}else {
	header("Location:show-data.php?error=schsuc");
}


/*$id = $_POST['id'];
$query = "DELETE FROM places WHERE id='$id'";
$res = mysqli_query($conn, $query);
if($res) {
echo json_encode($res);
} else {
echo "Error: " . $sql . "" . mysqli_error($conn);
}*/
?>