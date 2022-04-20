<?php

include('ConnectSQL.php');

//Permet d'effectuer une requête à l'aide de l'objet PDO pour la base de données
$produitStatement = $mysqlConnection->prepare('SELECT `description` FROM `produit`');

//Permet de récupérer les données, et les éxécuter la requête SQL sous forme de tableau
$produitStatement->execute();
$produit = $produitStatement->fetchAll();

//Afficher les produits similaire au consolelog à la ligne
echo '<pre>';
var_dump($produit);
echo '</pre>';
?>