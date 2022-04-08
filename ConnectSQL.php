<?php
        
    //On établit la connexion
    $mysqlConnection = new PDO(
        'mysql:host=localhost;dbname=geekzone;charset=utf8', 
        'root',
        '',
    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION],
);
?>
