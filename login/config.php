<php 

/* Attempt to connect to MySQL database */
$link = mysqli_connect("loclhost", "root", "", "projekt_2\database\helixfoglalo.sql");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>