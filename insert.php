<?php
include 'connect.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $title = mysqli_real_escape_string($dbc, $_POST['title']);
    $about = mysqli_real_escape_string($dbc, $_POST['about']);
    $content = mysqli_real_escape_string($dbc, $_POST['content']);
    $category = mysqli_real_escape_string($dbc, $_POST['category']);
    $date = date('d.m.Y.');

 
    if (isset($_POST['archive'])) {
        $archive = 1;
    } else {
        $archive = 0;
    }


    $picture = $_FILES['pphoto']['name'];
    $target_dir = 'img/';
    $target_file = $target_dir . basename($_FILES['pphoto']['name']);


    if (move_uploaded_file($_FILES['pphoto']['tmp_name'], $target_file)) {
        echo "Datoteka " . basename($_FILES['pphoto']['name']) . " je uspješno prenesena.";
    } else {
        echo "Došlo je do problema prilikom prijenosa datoteke.";
    }

    $query = "INSERT INTO vijesti (datum, naslov, sazetak, tekst, slika, kategorija, arhiva)
              VALUES ('$date', '$title', '$about', '$content', '$picture', '$category', '$archive')";
    

    $result = mysqli_query($dbc, $query) or die('Error querying database.');

    mysqli_close($dbc);
}
?>
