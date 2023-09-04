<?php 
session_start();
?>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="stylee.css">
</head>
<body>
<kouti action="delete.php" method="post">
           
           <?php if (isset($_GET['error'])) { ?>
               <p class="error"><?php echo $_GET['error']; ?></p>
           <?php } ?>
  
           <?php if (isset($_GET['success'])) { ?>
              <p class="success"><?php echo $_GET['success']; ?></p>
          <?php } ?>
           </kouti>
    </body>
<h1>DATA</h1> 
 <a href="admin.php" class="ca">BACK</a> 

<table>
        <tr>
            <th>SN</th>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Types</th>
            <th>Rating</th>
            <th>Rating_n</th>
            <th>Current Popularity</th>
            <th>Time spent</th>
            <th>Latitude</th>
            <th>Longtitude</th>
            <th>Day</th>
            <th>Data</th>
            <th> </th>
        </tr>

<?php


include 'db_conn.php';

$sn=0;


$query="SELECT places.id, places.name, places.address, places.types, places.rating, places.rating_n, places.current_popularity, places.time_spent,place_coordinates.latitude, place_coordinates.longtitude, place_populartimes.day, place_populartimes.data
FROM places INNER JOIN place_populartimes ON places.name=place_populartimes.namepop INNER JOIN place_coordinates ON places.name=place_coordinates.namecoor";
$exec = $conn -> query($query);
//echo ($_SESSION['name']);

if($exec -> num_rows > 0){
	while( $row = $exec -> fetch_assoc()){
    $sn++;
		echo "<tr><td>".$sn."</td><td>". $row["id"]. "</td><td>".  $row["name"]. "</td><td>".
    $row["address"]. "</td><td>".  $row["types"]. "</td><td>". $row["rating"]. "</td><td>".
    $row["rating_n"]. "</td><td>".  $row["current_popularity"]. "</td><td>" .  $row["time_spent"]. "</td><td>".
    $row["latitude"]. "</td><td>".  $row["longtitude"]. "</td><td>".  $row["day"]. "</td><td>".  $row["data"]. "</td><td>".
    "<button onClick={edit} style='margin: 1px 175px 1px;'><a href='update-form.php' class='clor'>Edit</a></button><button onClick={delete} style='margin: 1px 175px 1px;'><a href='delete.php' class='clor' >Delete</a></button>"."</td></tr>";
  }

	echo "</table>";
  

}
else {
	echo "";
}

?>
</table>
<br>
</html>