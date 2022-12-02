<form action="connect.php" method="post>
<?php
$count=1;
$dbServername="localhost";
$dbUsername="root";
$dbpassword="";
$dbName="projekt2proba";
$conn = mysqli_connect($dbServername, $dbUsername, $dbpassword, $dbName);
$F_id=$_GET['F_id'];
	$query=mysqli_query($conn,"select * from `fotos` where F_id='$F_id'");
	$row=mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html>
<head>
<title>Adatok módosítása</title>
</head>
<body>
	<h2>Adatok módosítása</h2>
	<form method="POST" action="update.php?id=<?php echo $F_id; ?>">
		<label>Username:</label><input type="text" value="<?php echo $row['F_username']; ?>" name="F_username">
		<label>Password:</label><input type="password" value="<?php echo $row['F_password']; ?>" name="F_password">
        <label>Password:</label><input type="text" value="<?php echo $row['F_vnev']; ?>" name="F_vnev">
        <label>Password:</label><input type="text" value="<?php echo $row['F_knev']; ?>" name="F_knev">
        <label>Password:</label><input type="picture" value="<?php echo $row['picture']; ?>" name="picture">
		<input type="submit" name="Módosítás">
		<a href="adm_fotoslista.html">Back</a>
	</form>
</body>
</html>