

<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['name'])) {

 ?>
<!DOCTYPE html>
<html>
<head>
	<title>CHANGE PROFILE</title>
	<link rel="stylesheet" type="text/css" href="stylee.css">
</head>
<body>
     <form>
          <h2>
               <label>

               <div class="div"><a href="change-n.php" class="kouti">Change Username</a><br></div>
               <div class="div"><a href="change-p.php" class="kouti">Change Password</a><br></div>
               <br>  
               <a href="home.php" class="ca" style="margin: 1px 170px 1px;" >HOME</a>
               </label>
          </h2>
          
          
     </form>
</body>
</html>



<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>