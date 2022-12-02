<?php
$r_nev = $_POST['r_nev'];
$helyszin = $_POST['helyszin'];
$date_start = $_POST['date_start'];
$date_end = $_POST['date_end'];
$megrendelo_NK = $_POST['megrendelo_NK'];
$comment = $_POST['comment'];

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
		$sql = "INSERT INTO rendezveny (r_nev,helyszin,date_start,date_end,megrendelo_NK,comment) VALUES ( '$r_nev','$helyszin','$date_start',$date_end,'$megrendelo_NK','$comment');";
	$result = mysqli_query($conn, $sql);
		echo "Registration successfully...";
		$conn->close();
	}
	
?>

<a href="user_rendezvenylista.html">Vissza a főoldalra</a>