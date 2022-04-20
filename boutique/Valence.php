<!DOCTYPE html>

<html lang="fr" style="background: url(&quot;https://cdn.bootstrapstudio.io/placeholders/1400x800.png&quot;);color: rgb(0, 0, 0);">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

    <!--Balise Titre contenant le nom Geekzone -->

    <title>Geekzone</title>

    <!-- Route permettant de faire le lien entre plusieurs fichiers css -->

    <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../https://fonts.googleapis.com/css?family=Akaya+Kanadaka&amp;display=swap">
    <link rel="stylesheet" href="../https://fonts.googleapis.com/css?family=Bitter:400,700&amp;display=swap">
    <link rel="stylesheet" href="../assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="../assets/css/Article-List.css">
    <link rel="stylesheet" href="../assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="../assets/css/Header-Dark.css">
    <link rel="stylesheet" href="../assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="../assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="../assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="../assets/css/styles.css">
</head>

<body style="background: linear-gradient(black 0%, rgb(118,197,118) 8%, white);">

    <!--Création de la navBar en html-->

    <nav class="navbar navbar-light navbar-expand-lg navigation-clean-button" 
      style="background: rgba(0,0,0,0.1);color: rgb(73,134,147);border-color: rgb(7,98,7);">

        <div class="container"><a class="navbar-brand" href="../index.php" 
          style="font-size: 60px;">GeekZone</a><button data-bs-toggle="collapse" class="navbar-toggler"
            data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span>
              <span class="navbar-toggler-icon"></span></button>

            <div class="collapse navbar-collapse" id="navcol-1"><a class="login" href="../Boutiques.php"
              style="background: rgba(32,201,151,0);color: var(--bs-gray-100);font-size: 23px;">Nos Boutiques</a>
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" 
                      data-bs-toggle="dropdown" href="#" style="font-size: 23px;color: var(--bs-gray-100);">Catalogue</a>
                        <div class="dropdown-menu"><a class="dropdown-item" href="../Cuisine.php">Cuisine</a>
                          <a class="dropdown-item" href="../Gadget.php">Gadget</a><a class="dropdown-item"
                            href="../Mode.php">Mode</a><a class="dropdown-item" href="../Portable.php">Portable</a>
                              <a class="dropdown-item" href="../USB.php">USB</a></div>
                    </li>
                </ul><a class="login" href="../Connexion.php" style="background: rgba(32,201,151,0);
                  color: var(--bs-gray-100);font-size: 20px;padding: 10px;">Se Connecter</a><span 
                    class="navbar-text actions"> <a class="btn btn-light action-button" role="button"
                      href="../Inscription.php" style="font-size: 20px;color: var(--bs-gray-100);
                        background: var(--bs-green);margin: 15px;">S'inscrire</a></span>

            </div><a href="../Admin.php"><img src="../assets/img/setting-removebg-preview.png"
              style="width: 75px;height: 45px;"></a>
        </div>
    </nav>
    <p class="text-center d-xl-flex justify-content-xl-center" style="font-size: 50px;text-align: center;font-style:
      italic;font-weight: bold;">GeekZone la référence du Geek
    </p>
    <section class="article-list" style="color: rgb(49, 52, 55);">

    <?php

include('../ConnectSQL.php');

//Permet d'effectuer une requête à l'aide de l'objet PDO pour la base de données
$produitStatement = $mysqlConnection->prepare('SELECT `id` , `rue` , `ville`, `telephone`, `horaires` FROM `boutique` WHERE `id` = "1"' );

//Permet de récupérer les données, et les éxécuter la requête SQL sous forme de tableau
$produitStatement->execute();
$produit = $produitStatement->fetch();

?>
   <p>
   <strong>Boutique de Valence</strong><br/> </br>
   <img class="img-fluid" src="../assets/img/boutique_valence.jpg">
   Elle est situé : <?php echo $produit['rue']; ?>, dans <?php echo $produit['ville']; ?><br />
   elle est joignable au <?php  echo $produit['telephone']; ?><br/></br><?php echo $produit['horaires']; ?>
  </p>
<?php      

?>