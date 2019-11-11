<?php 
session_start();

if(isset($_SESSION["user_email"]))
{
	header("Location:dash.php");
}	

$status = "";

if($_SERVER['REQUEST_METHOD'] == 'POST') 
{	
	if($_POST['email'] != null || $_POST['password'] != null )
	{	
		include("includes/connect.php");
		$sql = "SELECT * FROM domain_users where email= '".$_POST['email']."' AND password = '".$_POST['password']."'";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
			// output data of each row
			while($row = $result->fetch_assoc()) {
				$cid = $row["cid"];
				$name = $row["name"];
				$email = $row["email"];
				
					
				$_SESSION['user_cid'] =  $cid;
				$_SESSION['user_name'] =  $name;
				$_SESSION['user_email'] =  $email;
				
				$status = "Successful";
				echo '<script type="text/javascript"> window.location="dash.php";</script>';
				exit();
			}
		} else {
				$status = "Error : Please check the username or password entered.";
		}
		$conn->close();
	}			
}
?>

<html>
<head>
<title> Login to AW </title>
</head>
<body>
	<h1> Login to AW</h1>
	<?php echo $status."<br><br>"; ?>
	<form method="post">
	Registered Email
		<input type="text" name="email">
	Password	
		<input type="password" name="password">
		<input type="submit" value="Go" >
	</form>
</body>
