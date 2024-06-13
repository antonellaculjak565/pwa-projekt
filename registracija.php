<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registracija</title>
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
        <h2>Registracija korisnika</h2>
        <form action="registracija.php" method="POST">
            <div class="form-item">
                <label for="username">Korisničko ime:</label>
                <div class="form-field">
                    <input type="text" name="username" id="username" class="form-field-textual" required>
                </div>
            </div>
            <div class="form-item">
                <label for="ime">Ime:</label>
                <div class="form-field">
                    <input type="text" name="ime" id="ime" class="form-field-textual" required>
                </div>
            </div>
            <div class="form-item">
                <label for="prezime">Prezime:</label>
                <div class="form-field">
                    <input type="text" name="prezime" id="prezime" class="form-field-textual" required>
                </div>
            </div>
            <div class="form-item">
                <label for="lozinka">Lozinka:</label>
                <div class="form-field">
                    <input type="password" name="lozinka" id="lozinka" class="form-field-textual" required>
                </div>
            </div>
            <div class="form-item">
                <label for="lozinka2">Ponovite lozinku:</label>
                <div class="form-field">
                    <input type="password" name="lozinka2" id="lozinka2" class="form-field-textual" required>
                </div>
            </div>
            <div class="form-item">
                <button type="submit" name="registracija" value="Registracija">Registracija</button>
            </div>
        </form>
        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['registracija'])) {
            include 'connect.php';

            $username = $_POST['username'];
            $ime = $_POST['ime'];
            $prezime = $_POST['prezime'];
            $lozinka = $_POST['lozinka'];
            $lozinka2 = $_POST['lozinka2'];

            if ($lozinka === $lozinka2) {
                $hashed_password = password_hash($lozinka, PASSWORD_DEFAULT);
                $level = 0;

                $query = "INSERT INTO korisnik (korisnicko_ime, ime, prezime, lozinka, razina) VALUES (?, ?, ?, ?, ?)";
                $stmt = mysqli_stmt_init($dbc);
                
                if (mysqli_stmt_prepare($stmt, $query)) {
                    mysqli_stmt_bind_param($stmt, 'ssssi', $username, $ime, $prezime, $hashed_password, $level);
                    mysqli_stmt_execute($stmt);

                    echo "<p>Registracija uspješna!</p>";
                } else {
                    echo "<p>Došlo je do greške pri registraciji. Pokušajte ponovno.</p>";
                }
            } else {
                echo "<p>Lozinke se ne podudaraju. Pokušajte ponovno.</p>";
            }
        }
        ?>
    </section>
    <footer>
        <div class="main"><span>france.tv</span><br>@Antonella Čuljak, aculjak1@tvz.hr, 2024. godina</div>
    </footer>
</body>
</html>
