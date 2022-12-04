<?php include('partials/menu.php'); ?>

<!DOCTYPE html>
<html>

<head>
  <title> Admin felület</title>
  <link rel="icon" type="image/x-icon" href="admin\image\favicon.ico">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="admin.css" rel="stylesheet" type="text/css" /> <!--forrást átírni-->
</head>

<body>

<h1>Profilok</h1>
<!--Helix img + Navigacios bar-->
    
    


<div class="wrapper2">
        <!--User img + usernév jobb felső sarokban-->
        <div class="userIcon">
            <img id="user" src="Usericon.svg"></img>
        </div>
        <div class="userName">
            <label id="username">[Név]</label>
        </div>

        <!--Fotosok listaja mint linkek-->
        <div class="content">
            <form class="data">
                <!--Profilkép-->
                <img src=""><br> <!--forrás megírása-->
                <label><a href=""> Név </a></label><br>
                <img src=""><br> <!--forrás megírása-->
                <label><a href=""> Név </a></label><br>
                <img src=""><br> <!--forrás megírása-->
                <label><a href=""> Név </a></label><br>
            </form>
    </div>
</body>