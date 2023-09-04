<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['name'])) {

    include "db_conn.php";

    if (isset($_POST['old_name']) && isset($_POST['new_name'])
    && isset($_POST['c_newname'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

    $old_name = validate($_POST['old_name']);
	$new_name = validate($_POST['new_name']);
	$c_newname = validate($_POST['c_newname']);


    if(empty($old_name)){
        header("Location: change-n.php?error=Old Name is required");
        exit();
      }else if(empty($new_name)){
        header("Location: change-n.php?error=New Name is required");
        exit();
      }else if($new_name !== $c_newname){
        header("Location: change-n.php?error=The confirmation name  does not match");
        exit();
      }else {

          $id = $_SESSION['id'];
  
          $sql = "SELECT name
                  FROM users WHERE 
                  id='$id' AND name='$old_name'";
          $result = mysqli_query($conn, $sql);
          if(mysqli_num_rows($result) === 1){
              
              $sql_2 = "UPDATE users
                        SET name='$new_name'
                        WHERE id='$id'";
              mysqli_query($conn, $sql_2);
              header("Location: change-n.php?success=Your name has been changed successfully");
             
              exit();
  
          }else {
              header("Location: change-n.php?error=Incorrect name");
              exit();
          }
  
      }
  
  }
  }
    
   ?>
  <!DOCTYPE html>
  <html>
  <head>
      <title>CHANGE NAME</title>
      <link rel="stylesheet" type="text/css" href="stylee.css">
  </head>
  <body>
      <form action="change-n.php" method="post">
           <h2>Change Name</h2>
           <?php if (isset($_GET['error'])) { ?>
               <p class="error"><?php echo $_GET['error']; ?></p>
           <?php } ?>
  
           <?php if (isset($_GET['success'])) { ?>
              <p class="success"><?php echo $_GET['success']; ?></p>
          <?php } ?>
  
           <label>Old User Name</label>
           <input type="text" 
                  name="old_name" 
                  placeholder="Old Name">
                  <br>
  
           <label>New User Name</label>
           <input type="text" 
                  name="new_name" 
                  placeholder="New User Name">
                  <br>
  
           <label>Confirm New Name</label>
           <input type="text" 
                  name="c_newname" 
                  placeholder="Confirm New Name">
                  <br>
  
           <button type="submit">CHANGE</button>
            <a href="change_profile.php" class="ca">BACK</a>
       </form>
  </body>
  </html>






