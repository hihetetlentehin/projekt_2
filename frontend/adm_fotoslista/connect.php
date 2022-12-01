<?php
$fusername = $_POST['fusername'];
$fpassword = $_POST['fpassword'];
$fvnev = $_POST['fvnev'];
$fknev = $_POST['fknev'];
$picture = $_POST['picture'];

	// Database connection
	$dbServername="localhost";
$dbUsername="root";
$dbpassword="";
$dbName="projekt2proba";

$conn = mysqli_connect($dbServername, $dbUsername, $dbpassword, $dbName);
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} else {
		$sql = "INSERT INTO fotos (F_username,F_password,F_vnev,F_knev,picture) VALUES ( '$fusername','$fpassword','$fvnev','$fknev','$picture');";
	$result = mysqli_query($conn, $sql);
		echo "Registration successfully...";
		$conn->close();
	}
	
?>

<a href="adm_fotoslista.html">Vissza a főoldalra</a>