<?php

session_start(); 
include "db_conn.php";

try {

  $jsondata = file_get_contents('generic3.json');
  $dataArray = json_decode($jsondata, true);

  print_r ($dataArray);

  foreach($dataArray as $data) {

    $id = $data['id'];
    $name = $data['name'];
    $address = $data['address'];
    $types = json_encode($data['types']);
    $rating = $data['rating'];
    $rating_n = $data['rating_n'];
    $current_popularity = $data['current_popularity'] ?? null;
    $time_spent = json_encode($data['time_spent'] ?? null);

    $latitude = $data['coordinates']['lat'];
    $longtitude = $data['coordinates']['lng'];

    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // begin the transaction
    $conn->beginTransaction();
    // our SQL statements
    $conn->exec("INSERT INTO places (id, name, address, types, rating, rating_n, current_popularity, time_spent)
    	VALUES ('$id', '$name', '$address', '$types','$rating', '$rating_n', '$current_popularity', '$time_spent')");

    $conn->exec("INSERT INTO place_coordinates (namecoor, latitude, longtitude)
    	VALUES ('$name', '$latitude', '$longtitude')");


    foreach($data['populartimes'] as $populartimes) {

      $day = $populartimes['name'];
      $dayData = json_encode($populartimes['data']);
      
      echo "This is the key: " . $day . " and this is the value: " . $dayData, '<br>';
    

      $conn->exec("INSERT INTO place_populartimes (namepop, day, data)
       VALUES ('$name','$day', '$dayData')");

    }

  // commit the transaction
  $conn->commit();
  echo "New records created successfully";
  
  }
} catch(PDOException $e) {
  // roll back the transaction if something failed
  $conn->rollback();
  echo "Error: " . $e->getMessage();
}

$conn = null;



?>