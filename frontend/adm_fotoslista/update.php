<?php
	include('connect.php');
	$F_id=$_GET['F_id'];
	$F_username=$_POST['F_username'];
	$F_password=$_POST['F_password'];
	$F_vnev$_POST['F_vnev'];
	$F_knev=$_POST['F_knev'];
	$picture=$_POST['picture'];
 
	mysqli_query($conn,"update `fotos` set F_username='$F_username', F_password='$F_password' , 'F_vnev'=$F_vnev, 'F_knev=$F_knev, 'picture'=$picture where userid='$id'");
	header('location:index.php');
?>