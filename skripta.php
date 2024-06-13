<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    include 'insert.php';

    $title = $_POST["title"];
    $about = $_POST["about"];
    $content = $_POST["content"];
    $image = $_FILES['pphoto']['name'];
    $category = $_POST["category"];
    
    if (isset($_POST['archive'])) {
        $archive = 'Da';
    } else {
        $archive = 'Ne';
    }
}
?>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Unos</title>
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
    <section class="main clanak">

        <h2>Unos novih vijesti ili proizvoda</h2>


     <section class="main">
     <div class="row">
     <p class="category"><?php
     echo $category;
     ?></p>
     <center><h1 class="title"><?php
     echo $title;
     ?></h1></center>
     <p>AUTOR:</p>
     <p>OBJAVLJENO:</p>
     </div>
     <section class="slika">
    <?php echo "<img src='img/$image'>"; ?>
     </section>
     <section class="about">
     <p>
     <?php
     echo $about;
     ?>
     </p>
     </section>
     <section class="sadrzaj">
     <p>
     <?php
    echo $content;
     ?>
     </p>
     </section>

 </section>

    </section>

    <footer>
        <div class="main"><span>france.tv</span><br>@Antonella Čuljak, aculjak1@tvz.hr, 2024. godina</div>
    </footer>
</body>
</html>