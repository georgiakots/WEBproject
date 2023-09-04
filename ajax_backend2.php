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
$poiCategory = $_GET['poiCategory'];
$currentDay = $_GET['currentday'];
	
// Escape User Input to help prevent SQL Injection
$poiName = mysqli_real_escape_string($db_handle,$poiName);
$poiCategory = mysqli_real_escape_string($db_handle,$poiCategory);
$currentDay = mysqli_real_escape_string($db_handle,$currentDay);
	
//build query
$query = "SELECT places.id, places.name, places.address, places.types, places.rating, places.rating_n, places.current_popularity, places.time_spent, place_populartimes.day, place_populartimes.data, place_coordinates.latitude, place_coordinates.longtitude
FROM places
INNER JOIN place_populartimes ON places.name=place_populartimes.namepop
INNER JOIN place_coordinates ON places.name=place_coordinates.namecoor
WHERE place_populartimes.day='$currentDay'";

//if name exists
if(isset($poiName) && !empty($poiName)){
    $query .= " AND places.name LIKE '%$poiName%'";
}

//if category exists
if(isset($poiCategory) && !empty($poiCategory)){
    $query .= " AND places.types LIKE '%$poiCategory%'";
}

//Execute query
$qry_result = mysqli_query($db_handle,$query) or die(mysqli_error());

$data = array();
while ($row = mysqli_fetch_assoc($qry_result)) {
    $data[] = $row;
}

echo json_encode($data);

?>