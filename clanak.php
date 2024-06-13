<?php

include 'connect.php';
$id = $_GET['id'];
$query = "SELECT * FROM vijesti WHERE id=$id";
$result = mysqli_query($dbc, $query);
$row = mysqli_fetch_array($result);

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Clanak</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <div class="main">
            <img src="img/logo.svg">
        </div>
        <hr>
        <nav class="main">
            <ul class="pet">
                <li><a href="index.php">home</a></li>
                <li><a href="kategorija.php?id=kultura" class="">kultura</a></li>
                <li><a href="kategorija.php?id=sport" class="">sport</a></li>
                <li><a href="administracija.php">administracija</a></li>
                <li><a href="unos.html">unos</a></li>          
            </ul>
        </nav>
        <hr>
    </header>

    <section class="main">
     <h2><?php
     echo '<span>'.$row['kategorija'].'</span>';
     ?></h2>
     <center><h1 class="title"><?php
     echo $row['naslov'];
     ?></h1></center>
     <p>AUTOR:</p>
     <p>OBJAVLJENO: <?php
     echo "<span>".$row['datum']."</span>";
     ?></p>
     <?php
     echo '<img src="img/' . $row['slika'] . '" style="max-width: 1200px;">';
     ?>
     <p>
     <?php
     echo "<i>".$row['sazetak']."</i>";
     ?>
     </p>
     <p>
     <?php
    echo $row['tekst'];
     ?>
     </p>
     </section>


    <footer>
        <div class="main"><span>france.tv</span><br>@Antonella Čuljak, aculjak1@tvz.hr, 2024. godina</div>
    </footer>
</body>
</html>