<!DOCTYPE html>
<html>
<head>
	<title>STATISTICS</title>
	<link rel="stylesheet" type="text/css" href="stylee.css">
     
</head>
<h1>Statistics of Visits & Positive Covid Results</h1>
	<table>
		<tr>
			<th>Total Number of Visits</th>
            <th>Total Number of Positive Covid Results</th>
		</tr>
<?php 
session_start();
include "db_conn.php";

$sql="SELECT num AS total FROM checkin ORDER BY num DESC LIMIT 1";
$result = $conn -> query($sql);

$sql1="SELECT COUNT(results) AS totalcov FROM covid WHERE results='Positive' ";
$result1 = $conn -> query($sql1);

if($result -> num_rows > 0){
	while( $row = $result -> fetch_assoc()){
        if($result1 -> num_rows > 0){
            while( $row1 = $result1 -> fetch_assoc()){
		echo "<tr><td>". $row["total"]. "</td> <td>".  $row1["totalcov"]."</td> </tr>";
            }
	}
}
	echo "</table>";

}
else {
    echo "";
}
?>
<br><br>
<a href="admin.php">BACK</a>
</html>