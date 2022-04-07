<?php
       try {
    //On établit la connexion
    $mysqlClient = new PDO('mysql:host=localhost;dbname=geekzone;charset=utf8', 'root');

        } catch (Exception $e) {
    //en cas d'échec de la connexion à la base de données, on affiche un message et on arrête tout
    die('Erreur : ' . $e->getMessage());
        }
?>
