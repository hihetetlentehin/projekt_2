
<?php include('menu.php'); ?>

<!DOCTYPE html>
<html>

<head>
  <title> Admin felület</title>
  <link rel="icon" type="image/x-icon" href="admin\image\favicon.ico">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="../style/adm_fotosok.css" rel="stylesheet" type="text/css" /> <!--forrást átírni-->
</head>

<body>

<h1>Profilok</h1>
<!--Helix img + Navigacios bar-->
    
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "projekt2";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT F_id, F_vnev, F_knev, F_email, F_telszam,F_pozicio FROM fotos";
$result = mysqli_query($conn, $sql);
?>
<div class="content">
    <?php
if (mysqli_num_rows($result) > 0) {
  // output data of each row
  echo "<tr >";
            echo "ID";
            echo "</td>";
            echo "<td >";
            echo "Név";
            echo "</td>";
            echo "<td >";
            echo "Email cím";
            echo "</td>";
            echo "<td>";
            echo "Telefonszám";
            echo "</td>";
            echo "<td>";
            echo "Pozíció";
            echo "</td>";
            
            echo "</tr>";}
            ?>
</div>
<div class="wrapper">
    <?php

  while($row = mysqli_fetch_assoc($result)) {echo "<tr>";
    echo "<td>";
    echo $row['F_id']; 
    echo "</td>";
    echo "<td >";
    echo $row["F_vnev"]. " " . $row["F_knev"];
    echo "</td>";
    echo "<td>";
    echo $row["F_email"];
    echo "</td>";
    echo "<td>";
    echo $row["F_telszam"];  
    echo "</td>";
    echo "<td>";
    echo $row["F_pozicio"];  
    echo "</td>";
    
    echo "</tr>\n";
    //echo "id: " . $row["F_id"]. " - Név: " . $row["F_vnev"]. " " . $row["F_knev"]." " . "Email cím: " ." " . $row["F_email"]. "Telefonszám: " . " " .$row["F_telszam"]." " ."Pozíció: " . $row["F_pozicio"]."<br>";
  }

mysqli_close($conn);
?>  

</div>

   

 
<div class="wrapper2">
        <!--User img + usernév jobb felső sarokban-->
        <div class="userIcon">
            <img id="user" src="../../pics/usericon.svg"></img>
        </div>
        <div class="userName">
            <label id="username">[Név]</label>

           
        </div>

        
    </div> 
</body>