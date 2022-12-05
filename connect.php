<?php
$F_username = $_POST['F_username'];
$F_password = $_POST['F_password'];
$F_vnev = $_POST['F_vnev'];
$F_knev = $_POST['F_knev'];
$F_email = $_POST['F_email'];
$F_telszam = $_POST['F_telszam'];
$picture = $_POST['picture'];


	// Database connection
	$dbServername="localhost";
$dbUsername="root";
$dbpassword="";
$dbName="projekt2";

$conn = mysqli_connect($dbServername, $dbUsername, $dbpassword, $dbName);
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$sql = "INSERT INTO fotos (F_username,F_password,F_vnev,F_knev,F_email,F_telszam,picture) VALUES ( '$fusername','$fpassword','$fvnev','$fknev','F_email, '$F_telszam','$picture');";
	$result = mysqli_query($conn, $sql);
		echo "Registration successfully...";
		$conn->close();
	}
	
?>

<a href="adm_fotoslista.html">Vissza a főoldalra</a>