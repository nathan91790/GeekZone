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

        <!-- Création d'un containeur avec les produits de la catégorie USB et leur information -->

        <div class="container">
            <div class="intro">
                <h2 class="text-center" style="font-size: 47px;margin: 20px;">Articles en Vedette</h2>
                <p class="text-center"></p>
            </div>
            <div class="row articles">

                <!-- Création du produit Chauffe-Tasse Biscuit USB avec son nom et ses informations -->

                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/chauffe-tasse-biscuit-usb.jpg" style="width: 283px;height: 283px;"><img class="img-fluid" src="assets/img/chauffe-tasse-biscuit-usb-1.jpg" style="width: 283px;height: 283px;"></a>
                    <h3 class="name" style="font-size: 22px;">Chauffe-Tasse Biscuit USB</h3>
                    <p class="description" style="font-size: 17px;"><br>Rien ne vaut que de traîner sur ses sites
                        préférés en compagnie d''un breuvage bien tiède juste à côté de vous. Un chocolat ? Un thé ? Un
                        café ? Ce chauffe-tasse tout mignon en forme de petit gâteau gardera votre boisson bien au chaud
                        jusqu''à 50° !<br><br></p><a class="action" href="#"></a>
                </div>

                <!-- Création du produit Ventilateur Lumineux USB avec son nom et ses informations -->

                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/ventilateur-lumineux-usb.jpg"><img class="img-fluid" src="assets/img/ventilateur-lumineux-usb-1.jpg"></a>
                    <h3 class="name" style="font-size: 22px;">Ventilateur Lumineux USB</h3>
                    <p class="description" style="font-size: 17px;"><br>Un ventilateur USB avec tige flexible, idéal
                        pour une utilisation sur un ordinateur portable. Petit plus : des LEDs incrustées pour une
                        ambiance hors du commun.', 'Chaud ? Ce mini-ventilateur USB avec tige flexible saura vous
                        rafraîchir durant vos longues journées de travail.<br><br></p><a class="action" href="#"></a>
                </div>

                <!-- Création du produit Frigo USB avec son nom et ses informations -->

                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/frigo-usb.jpg" style="width: 283px;"><img class="img-fluid" src="assets/img/frigo-usb-1.jpg" style="width: 283px;"></a>
                    <h3 class="name" style="font-size: 22px;">Frigo USB</h3>
                    <p style="font-size: 17px;"><br>Ce mini frigo vous permettra de refroidir votre canette de soda,
                        lors des grandes chaleurs !<br><br></p><a class="action" href="#"></a>
                </div>

                <!-- Création du produit Mini Aspirateur USB avec son nom et ses informations -->

                <div class="col-sm-6 col-md-4 item"><a href="#"></a><a class="action" href="#"></a></div>
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="assets/img/mini-aspirateur-usb.jpg" style="width: 283px;"></a>
                    <h3 class="name" style="font-size: 22px;">Mini Aspirateur USB</h3>
                    <p style="font-size: 17px;"><br>Fini les miettes de pain et autres poussières incrustées dans votre
                        clavier, grâce à ce mini aspirateur USB. Accessoire bien pratique ! Éliminez la saleté qui règne
                        sur votre bureau, grâce à ce mini aspirateur USB !<br><br></p><a class="action" href="#"></a>
                </div>
                <div class="col-sm-6 col-md-4 item"><a href="#"></a><a class="action" href="#"></a></div>
            </div>
        </div>
    </section>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>