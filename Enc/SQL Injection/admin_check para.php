<?php
	$con = mysqli_connect("localhost","root","","cyber") or die(mysqli_error());
	$conn = sqlsrv_connect("localhost","root","","cyber");
	
		$params = array($_POST['email'], $_POST['password']);
		
		
		$sql = "SELECT * FROM email WHERE email = ? and password = ?";
		$result = sqlsrv_query($conn,$sql,$params);
		if(sqlsrv_has_rows($result)!= 0){
			$rs = mysqli_fetch_array($result);
		     session_start();
				$_SESSION["user_id"] = $rs["user_id"];
				header("location:./home.php");
			 
		}
			
		
		else{
			?>
			<script>
				alert("Invalid email name or password.!!");
				window.location="./index.php";
			</script>
			<?php
		}
	
	
	mysqli_close($con);
?>
