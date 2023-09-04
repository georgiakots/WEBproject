
<!DOCTYPE html>
<html>
<head>
	<title>PROFILE</title>
	<link rel="stylesheet" type="text/css" href="stylee.css">
     
</head>
<h1>Case Report & Visits History</h1>
	<table>
		<tr>
			<th>Username</th>
			<th>Email</th>
			<th>Date</th>
			<th>Covid Test Results</th>
		</tr>


<?php 
session_start();
include "db_conn.php";
$userid = $_SESSION['id'];
$place = $_SESSION['name'];

$sql7="SELECT username, useremail, date, results FROM covid WHERE userid='$userid'";
$result7 = $conn -> query($sql7);


if($result7 -> num_rows > 0){
	while( $row = $result7 -> fetch_assoc()){
		echo "<tr><td>". $row["username"]. "</td> <td>".  $row["useremail"]. "</td> <td>".  $row["date"]. "</td> <td>".  $row["results"]. "</td> </tr>";
	}

	echo "</table>";

}
else {
	echo "";
}
?>
<br><br>
<table>
		<tr>
			<th>Username</th>
			<th>Date</th>
			<th>Amount of people in POI</th>
			<th>Visit</th>
		</tr>
<?php
$sql10="SELECT user_name, date, amount,visit FROM checkin WHERE user_id='$userid'";
$result10 = $conn -> query($sql10);

//$sql11="SELECT name FROM places WHERE name='$place'";
//$result11 = $conn -> query($sql11);

if($result10 -> num_rows > 0){
	while( $row = $result10 -> fetch_assoc()){
		echo "<tr><td>". $row["user_name"]. "</td> <td>". $row["date"]. "</td> <td>".  $row["amount"]. "</td> <td>". $row["visit"]. "</td> </tr>";
	}

	echo "</table>";

}
else {
	echo "";
}

?>
</table>
<br>
<a href="home.php">HOME</a>


</html>

