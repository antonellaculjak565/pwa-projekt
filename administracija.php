<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Administracija</title>
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
        <form action="administracija.php" method="POST">
            <div class="form-item">
                <label for="username">Korisničko ime:</label>
                <div class="form-field">
                    <input type="text" name="username" id="username" class="form-field-textual" required>
                </div>
            </div>
            <div class="form-item">
                <label for="lozinka">Lozinka:</label>
                <div class="form-field">
                    <input type="password" name="lozinka" id="lozinka" class="form-field-textual" required>
                </div>
            </div>
            <div class="form-item">
                <button type="submit" name="prijava" value="Prijava">Prijava</button>
            </div>
        </form>

<?php

include 'connect.php';


if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $username = $_POST['username'];
    $lozinka = $_POST['lozinka'];


    $sql = "SELECT id, korisnicko_ime, lozinka, razina FROM korisnik WHERE korisnicko_ime = ?";


    $stmt = mysqli_prepare($dbc, $sql);


    if ($stmt === false) {
        die('Nemoguće pripremiti upit: ' . mysqli_error($dbc));
    }


    mysqli_stmt_bind_param($stmt, 's', $username);


    mysqli_stmt_execute($stmt);


    $result = mysqli_stmt_get_result($stmt);


    if (mysqli_num_rows($result) > 0) {

        $row = mysqli_fetch_assoc($result);


        if (password_verify($lozinka, $row['lozinka'])) {

            echo "<h2>Dobrodošli, " . htmlspecialchars($row['korisnicko_ime']) . "!</h2>";
            echo "<p>Vaša razina pristupa je: " . htmlspecialchars($row['razina']) . "</p>";


            if ($row['razina'] == 1) {
                echo "<p>Vi ste administrator.</p>";
                

                header("Location: administracija-izmjenjeno.php");
                exit;
            } else {
                echo "<p>Vi niste administrator.</p>";

            }
        } else {

            echo "<p>Neispravna lozinka. Molimo pokušajte ponovno.</p>";
        echo "<p>Ako još nemate račun, možete se <a href='registracija.php'>registrirati ovdje</a>.</p>";
        }
    } else {

        echo "<p>Korisnik s tim korisničkim imenom ne postoji.</p>";
        echo "<p>Ako još nemate račun, možete se <a href='registracija.php'>registrirati ovdje</a>.</p>";
    }


    mysqli_stmt_close($stmt);

} else {

    echo "<p>Molimo prijavite se koristeći formu.</p>";
}


mysqli_close($dbc);
?>



    </section>
    <footer>
        <div class="main"><span>france.tv</span><br>@Antonella Čuljak, aculjak1@tvz.hr, 2024. godina</div>
    </footer>
</body>
</html>
