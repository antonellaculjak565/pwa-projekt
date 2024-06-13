<?php
include 'connect.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
}

$query = "SELECT * FROM vijesti WHERE kategorija='$id' AND arhiva=0";
$result = mysqli_query($dbc, $query);

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Kategorija <?php echo htmlspecialchars(ucfirst($id)); ?></title>
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
        <br>
        <div class="pet">
        <?php
            while ($row = mysqli_fetch_array($result)) {
             echo '<article>';
             echo '<img src="img/' .$row['slika']. '">';
             echo '<a href="clanak.php?id='.$row['id'].'">';
             echo $row['naslov'];
             echo '</a>';
             echo '</article>';
                    }
        ?>
        </div>
    </section>
    <footer>
        <div class="main"><span>france.tv</span><br>@Antonella Čuljak, aculjak1@tvz.hr, 2024. godina</div>
    </footer>
</body>
</html>
