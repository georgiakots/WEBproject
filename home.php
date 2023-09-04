<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['name'])) {

 ?>
<!DOCTYPE html>
<html>
<head>
	<title>HOME</title>
     <link rel="stylesheet" type="text/css" href="stylee.css">
	
</head>
<body>
     <form>
          <h1>Homepage</h1> <br>
               <div class="div"><a href="profile.php" class="kouti">Profile</a></div>
               <div class="div"><a href="change_profile.php" class="kouti">Change Profile</a></div>
               <div class="div"><a href="maps.php" class="kouti">Maps</a></div>
               <div class="div"><a href="covid.php"class="kouti">Covid-19 Results</a><br></div>
               
          </h1>
          <br>
          <button onClick={logout} style="margin: 1px 175px 1px;"><a href="logout.php" class="clor">Logout</a> </button>
     </form>
     
</body>
</html>

<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>