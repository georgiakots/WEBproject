
<?php
 
 session_start();
 include "db_conn.php";


 if (isset($_SESSION['id']) && isset($_SESSION['name']) && isset($_SESSION['address']) && isset($_SESSION['types']) && isset($_SESSION['rating']) && isset($_SESSION['rating_n']) && isset($_SESSION['current_popularity'])  && isset($_SESSION['time_spent'])  && isset($_SESSION['latitude']) && isset($_SESSION['longtitude']) && isset($_SESSION['day']) && isset($_SESSION['data'])) {
 
    
    if (isset($_POST['name1']) && isset($_POST['address1']) && isset($_POST['types1']) && isset($_POST['rating1']) && isset($_POST['rating_n1']) && isset($_POST['current_popularity1']) && isset($_POST['time_spent1'])  && isset($_POST['latitude1'])  && isset($_POST['longtitude1']) && isset($_POST['day1']) && isset($_POST['data1'])) { 
 
 
       function validate($data){
          $data2= trim($data);
         $data2 = stripslashes($data);
         $data2 = htmlspecialchars($data);
         return $data;
       }
 
       //$id1= validate($_POST['id1']);
       $name1= validate($_POST['name1']);
       $address1= validate($_POST['address1']);
       $types1 = validate($_POST['types1']);
       $rating1 = validate($_POST['rating1']);
       $rating_n1= validate($_POST['rating_n1']);
       $current_popularity1= validate($_POST['current_popularity1']);
       $time_spent1 = validate($_POST['time_spent1']);
       $latitude1 = validate($_POST['latitude1']); 
       $longtitude1= validate($_POST['longtitude1']);
       $day1= validate($_POST['day1']);
       $data1 = validate($_POST['data1']);
 
 
       if(empty( $name1)){
          header("Location: update-form.php?error=Name is required");
          exit();
        }else if(empty($address1)){
          header("Location: update-form.php?error=Adress is required");
          exit();
        }else if($types1){
          header("Location: update-form.php?error=type is required");
          exit();
        }
        else if($rating_n1){
          header("Location:update-form.php?error=Rating is required");
          exit();
        }
        else if($current_popularity1){
          header("Location: update-form.php?error= current_popularity is required");
          exit();
        }
        else if($time_spent1){
             header("Location: update-form.php?error=time is required");
             exit();
        }
        else if($latitude1){
                header("Location: update-form.php?error=latitude is required");
                exit();
        }
        else if($longtitude1){
                header("Location: update-form.php?error= longtitude is required");
                exit();
        }
        else if($day1){
                header("Location: update-form.php?error=Day is required");
                exit();
        }else if( $data1){
                header("Location: update-form.php?error=Data is required");
                exit();
        }
       
 
       else {
 
            $id = $_SESSION['id'];
   
               $query="SELECT places.id, places.name, places.address, places.types, places.rating, places.rating_n,
               places.current_popularity, places.time_spent,place_coordinates.latitude, place_coordinates.longtitude,
               place_populartimes.day, place_populartimes.data
               FROM places
               INNER JOIN place_populartimes ON places.name=places_populartimes.namepop
               INNER JOIN place_coordinates ON place.name=place_coordinates.namecoor WHERE id='$id'";
               $exec=mysqli_query($conn, $query);
   
               $row=mysqli_fetch_assoc($exec);
               echo json_encode($row);
            
                     if(mysqli_num_rows($exec) === 1){
            
                     $query1="UPDATE name, address, types, rating, rating_n, current_popularity, time_spent,latitude, longtitude, day, data
                           SET   name= '$name1',
                                 address= '$address1',
                                 types = '$types1',
                                 rating = '$rating1',
                                 rating_n= '$rating_n1',
                                 current_popularity= '$current_popularity1',
                                 time_spent = '$time_spent1',
                                 latitude = '$latitude1',
                                 longtitude= '$longtitude1',
                                 day= '$day1',
                                 data = '$data1'
                        FROM places
                        INNER JOIN place_populartimes ON places.name=places_populartimes.namepop
                        INNER JOIN place_coordinates ON place.name=place_coordinates.namecoor
                        WHERE id='$id'";
            
                  $exec1= mysqli_query($conn,$query1);
                  header("Location: update-form.php?success=Update successfully"); 
                  }
   
       
         
                  else{
                  header("Location: update-form.php?error=Erorr"); 
                  
                  }
               }
    }
 }
 else{
   header("Location: update-form.php?error=Erorrrr");
   
   exit();
}
 
 
/*
include 'db_conn.php';


if(isset($_GET['editId'])){
   $id= $_GET['editId'];
    edit_data($conn, $id);
}


if(isset($_POST['updateId'])){
   $id= $_POST['updateId'];
   update_data($conn,$id);
   
   }
// edit data query

function edit_data($conn, $id){
    $query="SELECT id, name, address, types, rating, rating_n,
    current_popularity, time_spent,latitude, longtitude,
    day, data FROM places
   INNER JOIN place_populartimes ON name=namepop
   INNER JOIN place_coordinates ON name=namecoor WHERE id='$id'";
    $exec=mysqli_query($conn, $query);

    $row=mysqli_fetch_assoc($exec);
    echo json_encode($row);
                
    
}

// update data query
function update_data($conn, $id){

      $name1= legal_input($_POST['name']);
      $address1= legal_input($_POST['address']);
      $types1 = legal_input($_POST['types']);
      $rating = legal_input($_POST['rating']);
      $rating_n1= legal_input($_POST['rating_n']);
      $current_popularity1= legal_input($_POST['current_popularity']);
      $time_spent1 = legal_input($_POST['time_spent']);
      $latitude1 = legal_input($_POST['latitude']); 
      $longtitude1= legal_input($_POST['longtitude']);
      $day1= legal_input($_POST['day']);
      $data1 = legal_input($_POST['data']);

      $query1="UPDATE id, name, address, types, rating, rating_n,
      current_popularity, time_spent,latitude, longtitude,
      day, data SET name= '$name1', address= '$address1', types = '$types1', rating = '$rating1',
      rating_n= '$rating_n1', current_popularity= '$current_popularity1', time_spent = '$time_spent1', latitude = '$latitude1',
      longtitude= '$longtitude1', day= '$day1', data = '$data1' 
      FROM places
      INNER JOIN place_populartimes ON name=namepop
      INNER JOIN place_coordinates ON name=namecoor
      WHERE id='$id'";
      /*$query = "UPDATE places set id='" . $_POST['id'] . "', name='" . $_POST['name'] . "', address='" . $_POST['address'] . "',
      types='" . $_POST['types'] . "', rating='" . $_POST['rating'] . "', rating_n='" . $_POST['rating_n'] . "',
      current_popularity='" . $_POST['current_popularity'] . "', time_spent='" . $_POST['time_spent'] . "'";
      $query
      
      latitude='" . $_POST['latitude'] . "', longtitude='" . $_POST['longtitude'] . "', day='" . $_POST['day'] . "',
      data='" . $_POST['data'] . "', WHERE id='" . $_POST['id'] . "'"; 

      $exec1= mysqli_query($conn,$query1);
  
      if($exec1){
         header("Location: update-form.php?success=Your account data was updated successfully");
         exit();
      }
      else{
         //$msg= "Error: " . $query . "<br>" . mysqli_error($conn);
         //echo $msg;
         header("Location: update-form.php?error=Error");
		   exit(); 
      }
}
   

// convert illegal input to legal input
function legal_input($value) {
  $value = trim($value);
  $value = stripslashes($value);
  $value = htmlspecialchars($value);
  return $value;
}*/
?>