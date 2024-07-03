<?php
$serwer = 'localhost';
$login = 'root';
$passwd = '';
$database = 'milfinder';
$db_connect = mysqli_connect($serwer, $login, $passwd, $database);
if(mysqli_connect_errno()){
    exit("Blad polaczenia z serwerem MySQL:".mysqli_connect_errno());
}
else{
    echo "Polaczono z baza danych.<br>";
}
?>