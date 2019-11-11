<?php 
session_start();

if(isset($_SESSION["user_email"]))
{
	header("Location:dash.php");
}	

?>
<html>
<head>
<title> Signun to AW </title>
</head>
<body>
	<h1> SignUp to AW</h1>	
	<form method="post" action="savepostdata.php">
	Name
		<input type="text" name="users|name">	
	Email
		<input type="text" name="users|email">
	Password	
		<input type="password" name="users|password">
		<input type="submit" value="Go" >
	</form>
</body>
