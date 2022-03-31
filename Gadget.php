<!DOCTYPE html>
<html lang="fr" style="background: url(&quot;https://cdn.bootstrapstudio.io/placeholders/1400x800.png&quot;);color: rgb(0, 0, 0);">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

    <!--Balise Titre contenant le nom Geekzone -->

    <title>Geekzone</title>

    <!-- Route permettant de faire le lien entre plusieurs fichiers css -->

    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Akaya+Kanadaka&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700&amp;display=swap">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Footer-Dark.css">
    <link rel="stylesheet" href="assets/css/Header-Dark.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body style="background: linear-gradient(black 0%, rgb(118,197,118) 8%, white);">

    <!--Création de la navBar en html-->

    <nav class="navbar navbar-light navbar-expand-lg navigation-clean-button" style="background: rgba(0,0,0,0.1);color: rgb(73,134,147);border-color: rgb(7,98,7);">
        <div class="container"><a class="navbar-brand" href="index.html" style="font-size: 60px;">GeekZone</a><button data-bs-toggle="collapse" class="navbar-toggler" data-bs-target="#navcol-1"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1"><a class="login" href="Boutiques.html" style="background: rgba(32,201,151,0);color: var(--bs-gray-100);font-size: 23px;">Nos Boutiques</a>
                <ul class="navbar-nav me-auto">
                    <li class="nav-item"></li>
                    <li class="nav-item"></li>
                    <li class="nav-item dropdown"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#" style="font-size: 23px;color: var(--bs-gray-100);">Catalogue</a>
                        <div class="dropdown-menu"><a class="dropdown-item" href="Cuisine.html">Cuisine</a><a class="dropdown-item" href="Gadget.html">Gadget</a><a class="dropdown-item" href="Mode.html">Mode</a><a class="dropdown-item" href="Portable.html">Portable</a><a class="dropdown-item" href="USB.html">USB</a></div>
                    </li>
                </ul><a class="login" href="Connexion.html" style="background: rgba(32,201,151,0);color: var(--bs-gray-100);font-size: 20px;padding: 10px;">Se
                    Connecter</a><span class="navbar-text actions"> <a class="btn btn-light action-button" role="button" href="Inscription.html" style="font-size: 20px;color: var(--bs-gray-100);background: var(--bs-green);margin: 15px;">S'inscrire</a></span>
            </div><a href="Admin.html"><img src="assets/img/setting-removebg-preview.png" style="width: 75px;height: 45px;"></a>
        </div>
    </nav>
    <p class="text-center d-xl-flex justify-content-xl-center" style="font-size: 50px;text-align: center;font-style: italic;font-weight: bold;">GeekZone la référence du Geek
    </p>
    <section class="article-list" style="color: rgb(49, 52, 55);">

        <!--Création du Containeur avec tous les produits dans la catégorie Cuisine-->

        <div class="container">
            <div class="intro">
                <p class="text-center"></p>
            </div>

            <!-- Création d'une div permettant d'afficher les images des articles -->

            <div class="row articles">
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/prise-chargeur-usb-robinet.jpg" style="width: 283px;height: 283px;"></a><img class="img-fluid" src="assets/img/prise-chargeur-usb-robinet-1.jpg" style="width: 283px;height: 283px;"><img class="img-fluid" src="assets/img/prise-chargeur-usb-robinet-2.jpg" style="width: 283px;"><a class="action" href="#"></a></div>
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/souris-optique-pixel.jpg"><img class="img-fluid" src="assets/img/souris-optique-pixel-1.jpg"></a><a class="action" href="#"></a></div>
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/stealth-switch.jpg" style="width: 283px;"><img class="img-fluid" src="assets/img/stealth-switch-1.jpg" style="width: 283px;"></a><a class="action" href="#"></a></div>
            </div>
        </div>

        <!--Création du Containeur qui montre le nom et la description des articles "Gadget"-->

        <div class="container">
            <div class="intro">
                <p class="text-center"></p>
            </div>
            <div class="row articles">

            <!--Div création du produit Prise Chargeur Robinet avec son nom et sa description  -->

                <div class="col-sm-6 col-md-4 item"><a href="#"></a>
                    <h3 class="name" style="font-size: 22px;">Prise Chargeur Robinet&nbsp;</h3>
                    <p class="description" style="font-size: 17px;"><br>Un chargeur USB totalement geek pour votre
                        smartphone ?<br>En forme de robinet, ce chargeur USB original se branche à votre prise de
                        courant<br><br></p><a class="action" href="#"></a>
                </div>

                <!--Div création du produit Souris Optique Pixel avec son nom et sa description  -->

                <div class="col-sm-6 col-md-4 item"><a href="#"></a>
                    <h3 class="name" style="font-size: 22px;">Souris Optique Pixel</h3>
                    <p class="description" style="font-size: 17px;"><br>Fatigué de votre banale souris ? Adoptez cette
                        souris optique filaire en forme d''icône géante de pointeur de souris ! Fonctionne comme une
                        souris classique avec ses deux boutons et sa molette de défilement à votre ordinateur.<br><br>
                    </p><a class="action" href="#"></a>
                </div>

                <!--Div création du produit Stealth Switch avec son nom et sa description  -->

                <div class="col-sm-6 col-md-4 item"><a href="#"></a>
                    <h3 class="name" style="font-size: 22px;">Stealth Switch</h3>
                    <p style="font-size: 17px;"><br>Vous avez décidé de vous accorder quelques minutes de détente ?
                        <br>Avec Stealth Switch vous pouvez en toute tranquillité lancer votre application
                        favorite.<br><br>
                    </p><a class="action" href="#"></a>
                </div>
                <div class="col-sm-6 col-md-4 item"><a href="#"></a><a class="action" href="#"></a></div>

                <!--Div création du produit Powerball' avec son nom et sa description  -->

                <div class="col-sm-6 col-md-4 item"><img class="img-fluid" src="assets/img/powerball.jpg" style="width: 283px;"><a href="#"></a>
                    <h3 class="name" style="font-size: 22px;">Powerball</h3>
                    <p style="font-size: 17px;"><br>Le Powerball est un nouveau gyroscope totalement révolutionnaire
                        tenant dans la main et capable de générer une énorme quantité d''énergie et un couple
                        extraordinaire<br><br></p><a class="action" href="#"></a>
                </div>
                <div class="col-sm-6 col-md-4 item"><a href="#"></a><a class="action" href="#"></a></div>
            </div>
        </div>
    </section>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>