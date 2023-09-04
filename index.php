<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
	<link rel="stylesheet" type="text/css" href="stylee.css">
</head>
<body>
     <form action="login.php" method="post">
     	<h2>LOGIN</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>
     	<label>Name</label>
     	<input type="text" name="name" placeholder="Name"><br>

     	<label>Password</label>
     	<input type="password" name="password" placeholder="Password"><br>
		
		<label>
   		<select name="Role">
		<option value="User">User</option>
		<option value="Admin">Admin</option>
		</select>
		</label>

		<br>


     	<button type="submit">Login</button>
          <a href="signup.php" class="ca">Create an account</a>
     </form>
</body>
</html>