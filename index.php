<?php
include 'connect.php';
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pocetna</title>
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
        <h2>ÉLECTIONS EUROPÉENNES 2019</h2><br>
        <div class="pet">


    <?php
    $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='sport' LIMIT 4";
    $result = mysqli_query($dbc, $query);
     $i=0;
     while($row = mysqli_fetch_array($result)) {
     echo '<article>';
     echo '<img src="img/' .$row['slika']. '">';
     echo '<a href="clanak.php?id='.$row['id'].'">';
     echo $row['naslov'];
     echo '</a>';
     echo '</article>';
     }?>

        <article>
            <img src="img/slika01.jpeg">
            <a href="#">"Je vis sur la route, mais sans concert au bout on a passée une journée avec Francis Lalanne, tête de liste "gilets jaunes" aux européennes</a>
        </article>
        <article>
            <img src="img/slika02.avif">
            <a href="clanak.html">INFO FRANCEINFO. Européennes los Républicains et le RN n'ont pas signé le plaidoyer de Transparency International pour la lutte contre la corruption</a>
        </article>
        <article>
            <img src="img/slika03.avif">
            <a href="#">Italie: Matteo Salvini affaibli pour les européennes</a>
        </article>
        <article>
            <img src="img/slika04.avif">
            <a href="#">"Nous avons une capacite a nous adresser à des Français qui viennent d'horizons trés différents", assure Nicolas Bay du Rassemblement national</a>
        </article>
        <article>
            <img src="img/slika05.avif">
            <a href="#">80 km/h, PMA, chômage, européennes... Ce qu'il faut retenir de l'interview d'Edouard Philippe sur franceinfo</a>
        </article>
        </div>
    </section>
    <hr>
    <section class="main">
        <h2>LES JT</h2><br>
        <div class="cetiri">
        <article>
            <img src="img/slika06.avif">
            <a href="#">JT de 8h du vendredi 17 mai 2019</a>
        </article>
        <article>
            <img src="img/slika07.avif">
            <a href="#">Le JT de 7h de franceinfo du vendredi 17 mai 2019</a>
        </article>
        <article>
            <img src="img/slika08.avif">
            <a href="#">Grand Sair 3 du jeudi 16 mai 2019</a>
        </article>
        <article>
            <img src="img/slika09.avif">
            <a href="#">JT de 20h du jeudi 16 mai 2019</a>
        </article>   
        </div>     
    </section>
    <footer>
        <div class="main"><span>france.tv</span><br>@Antonella Čuljak, aculjak1@tvz.hr, 2024. godina</div>
    </footer>
</body>
</html>