<?php
$sname= "localhost";
$unmae= "root";
$password = "";

$db_name = "test_web";

$db_handle = mysqli_connect($sname, $unmae, $password, $db_name);

if (!$db_handle) {
	echo "Connection failed!";
}
	
//Select Database
mysqli_select_db($db_handle,$db_name) or die(mysqli_error());
	
// Retrieve data from Query String
$poiName = $_GET['poiName'];
	
// Escape User Input to help prevent SQL Injection
$poiName = mysqli_real_escape_string($db_handle,$poiName);
	
//build query
$query = "SELECT places.id, places.name, places.address, places.types, places.rating, places.rating_n, places.current_popularity, places.time_spent, place_populartimes.day, place_populartimes.data, place_coordinates.latitude, place_coordinates.longtitude
FROM places
INNER JOIN place_populartimes ON places.name=place_populartimes.namepop
INNER JOIN place_coordinates ON places.name=place_coordinates.namecoor
WHERE places.name LIKE '%$poiName%'";
	
//Execute query
$qry_result = mysqli_query($db_handle,$query) or die(mysqli_error());

//Build Result String
$display_string = "<table>";
$display_string .= "<tr>";
$display_string .= "<th>Id</th>";
$display_string .= "<th>Name</th>";
$display_string .= "<th>Address</th>";
$display_string .= "<th>Types</th>";
$display_string .= "<th>Rating</th>";
$display_string .= "<th>Rating N</th>";
$display_string .= "<th>Current Popularity</th>";
$display_string .= "<th>Time Spent</th>";
$display_string .= "<th>Day</th>";
$display_string .= "<th>Data</th>";
$display_string .= "<th>Latitude</th>";
$display_string .= "<th>Longtitude</th>";
$display_string .= "</tr>";

// Insert a new row in the table for each person returned
while($row = mysqli_fetch_array($qry_result)) {
   $display_string .= "<tr>";
   $display_string .= "<td>$row[id]</td>";
   $display_string .= "<td>$row[name]</td>";
   $display_string .= "<td>$row[address]</td>";
   $display_string .= "<td>$row[types]</td>";
   $display_string .= "<td>$row[rating]</td>";
   $display_string .= "<td>$row[rating_n]</td>";
   $display_string .= "<td>$row[current_popularity]</td>";
   $display_string .= "<td>$row[time_spent]</td>";
   $display_string .= "<td>$row[day]</td>";
   $display_string .= "<td>$row[data]</td>";
   $display_string .= "<td>$row[latitude]</td>";
   $display_string .= "<td>$row[longtitude]</td>";
   $display_string .= "</tr>";
}

echo "Query: " . $query . "<br />";
$display_string .= "</table>";

echo $display_string;
?>