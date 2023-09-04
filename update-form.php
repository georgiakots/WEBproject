<!DOCTYPE html>
  <html>
  <head>
      <title>EDIT</title>
      <link rel="stylesheet" type="text/css" href="stylee.css">
  </head>
  <body>
      <form action="update-data.php" method="post">
           
           <?php if (isset($_GET['error'])) { ?>
               <p class="error"><?php echo $_GET['error']; ?></p>
           <?php } ?>
  
           <?php if (isset($_GET['success'])) { ?>
              <p class="success"><?php echo $_GET['success']; ?></p>
          <?php } ?>


        <h2>Update Data</h2>
   
          <label>Name</label>
          <input type="text" name="name1" placeholder="Full Name"  >
          <label>Address</label>
          <input type="text" name="address1" placeholder="Enter Address"  >
          <label>Types</label>
          <input type="text" name="types1" placeholder="Enter Types"  >
          <label>Rating</label>
          <input type="text" name="rating1" placeholder="Enter Rating"  >
          <label>Rating_n</label>
          <input type="text" name="rating_n1" placeholder="Enter Rating_n"  >
          <label>Current Popularity</label>
          <input type="text" name="current_popularity1" placeholder="Enter Current Popularity"  >
          <label>Time Spent</label>
          <input type="city" name="time_spent1" placeholder="Enter Time Spent"  >
          <label>Latitude</label>
          <input type="text" name="latitude1" placeholder="Enter Latitude"  >
          <label>Longtitude</label>
          <input type="text" name="longtitude1" placeholder="Enter Longtitude"  >
          <label>Day</label>
          <input type="text" name="day1" placeholder="Enter Day"  >
          <label>Data</label>
          <input type="text" name="data1" placeholder="Enter Data"  >
          <br>
          <button type="submit">SUBMIT</button>
         <a href="show-data.php" class="ca">BACK</a>

         
    </form>
  
</body>
</html>