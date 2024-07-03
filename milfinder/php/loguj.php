<?php
include "Laczenie_z_BD.php";
session_start();
if (isset($_POST['submit'])) {
    $email = $_POST['email'];
    $haslo = $_POST['haslo'];
    if(!empty($_POST['telefon'])){
        $tel = $_POST['telefon'];
    } else {
        $tel = NULL;
    }

    if (!empty($email) && !empty($haslo)){
        $sql = mysqli_query($db_connect, "SELECT * FROM logowanie_do_konta WHERE `E-mail` = '$email' AND `Haslo` = '$haslo'");
        if(mysqli_fetch_row($sql) > 0){
            header("Location: ../Strona_glowna.html");
        } else {
            echo("blad");
        }

        exit;
    } else if(!empty($tel)) {
        $sql = mysqli_query($db_connect, "SELECT * FROM  logowanie_do_konta WHERE `Telefon` = $tel");
        if(mysqli_fetch_row($sql) > 0){
            header("Location: ../Strona_glowna.html");
        } else {
            echo("blad");
        }
    }
}
$db_connect->close(); 

?> 