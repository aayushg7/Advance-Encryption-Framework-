<?php
	include("./connection.php");
	
	if(isset($_POST["email"]) && isset($_POST["password"])){
		$email = mysqli_real_escape_string($con,$_POST["email"]);
		$password = mysqli_real_escape_string($con,$_POST["password"]);
		
		$sql = "SELECT * FROM user_data WHERE email='".$email."' and password='".($password)."'";
		$q = mysqli_query($con,$sql);
		if(mysqli_num_rows($q)!=0){
			session_start();
			while($rs = mysqli_fetch_array($q)){
				$_SESSION["user_id"] = $rs["user_id"];
			}
			header("location:http://localhost:3000/encrypt");
		}
		else{
			?>
			<script>
				alert("Invalid email or password.!!");
				window.location="./login.php";
			</script>
			<?php
		}
	}
	else{
		header("location:./errors/illigle_operation.php");
	}
	mysqli_close($con);
?>















