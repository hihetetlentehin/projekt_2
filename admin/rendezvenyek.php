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

<h1>Rendezvények</h1>


<div class="wrapper">
        <img id="helix" src="...pics\helixfelirat500.png"></img>  /*forras*/
        <div class="navbar">
          <ul>
                <li><a href="...">Kezdőlap</a></li>
                <li><a href="...">Rendezvények</a></li>
                <li><a href="...">Rendezvény infók?</a></li>
                <li><a href="...">Fotósok listája</a></li>
                <li><a href="...">Videósok listája</a></li>
                <li><a href="...">Új profil feltöltés</a></li>
                <li><a href="...">Statisztika</a></li>
                <li><a href="...">Egyéb?</a></li>
            </ul>
        </div>
    </div>

    <div class="wrapper2">
        <!--User img + usernév jobb felső sarokban-->
        <div class="userIcon">
            <img id="user" src="Usericon.svg"></img>
        </div>
        <div class="userName">
            <label>[Név]</label>
        </div>    
    <div class="content">
     <h1> Rendezvények adatai</h1><br>
     <div class="data">
      <div>
        <label>Rendezvény neve</label><br>
        <input type="text" placeholder="Rendezvény neve"><br>
      </div>
      <div>
        <label>Rendezvény időpontja</label><br>
        <input type="datetime" placeholder="Időpont"><br>
      </div>
      <div>
        <label>Helyszín</label><br>
        <input type="text" placeholder="Helyszín"><br>
      </div>
      <div>
        <label>Szervező</label><br>
        <input type="text" placeholder="Szakbizottság/Szervező"><br>
      </div>
      <div>
        <label>Telefonszám</label><br>
        <input type="tel" placeholder="Telefonszám"><br>
      </div>
      <div>
        <label>E-mail cím</label><br>
        <input type="email" placeholder="e-mail"><br>
      </div>
      <div>  
        <label>Fotósok száma</label><br>
        <input type="text"><br>
      </div>
      <div> 
        <label>Fotós 1</label><br>
        <input type="text" placeholder="Fotós 1" ><br>
      </div>
      <div> 
        <label>Fotós 2</label><br>
        <input type="text" placeholder="Fotós 2" ><br>
      </div>
      <div> 
        <label>Fotós 3</label><br>
        <input type="text" placeholder="Fotós 3" ><br>
      </div>
      <div> 
        <label>Videóst igényel?</label><br>
        <input type="text" ><br>
      </div>
      <div> 
        <label>Videós 1</label><br>
        <input type="text" placeholder="Videós 1" ><br>
      </div>
      <div>
        <label>Add meg a drive linket</label><br>
        <input type="url" placeholder="Link helye"><br>
      </div>
     </div>
    </div>

    <div>
    <br><button type="button">Módosítás</button><br>
    </div>
    </div>
</body>