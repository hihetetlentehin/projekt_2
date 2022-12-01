
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Fotósok listája</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
<div class="form">
<p><a href="adm_fotoslista.html">Home</a> 
<a href="fotoshozzadas.html">Insert New Record</a> 

<h2>Fotósok listája</h2>

<table width="100%" border="1" style="border-collapse:collapse;">
<thead>
<tr>
<th><strong>ID</strong></th>
<th><strong>Felhasználónév</strong></th>
<th><strong>Jelszó</strong></th>
<th><strong>Vezetéknév</strong></th>
<th><strong>Keresztnév</strong></th>
<th><strong>Kép</strong></th>
<th><strong>Szerkesztés</strong></th>
<th><strong>Törlés</strong></th>
</tr>
</thead>
<tbody>
<form action="connect.php" method="post>
<?php
$count=1;
$dbServername="localhost";
$dbUsername="root";
$dbpassword="";
$dbName="projekt2proba";
$conn = mysqli_connect($dbServername, $dbUsername, $dbpassword, $dbName);
$sql_query="Select * from fotos;";
$result = mysqli_query($conn,$sql_query);
while($row = mysqli_fetch_assoc($result)) { ?>

<tr
<td align="center"></td>
<td align="center"><?php echo $row["F_id"]; ?></td>
<td align="center"><?php echo $row["F_username"]; ?></td>
<td align="center"><?php echo $row["F_password"]; ?></td>
<td align="center"><?php echo $row["F_vnev"]; ?></td>
<td align="center"><?php echo $row["F_knev"]; ?></td>
<td align="center"><?php echo $row["picture"]; ?></td>
<td align="center">
<a href="edit.php?id=<?php echo $row["F_id"]; ?>">Szerkesztés</a>
</td>
<td align="center">
<a href="delete.php?id=<?php echo $row["F_id"]; ?>">Törlés</a>
</td>
</tr>
<?php $count++; }?>
</tbody>
</table>
</form>
</div>
</body>
</html