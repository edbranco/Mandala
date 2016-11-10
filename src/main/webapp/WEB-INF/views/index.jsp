<%-- 
    Document   : index
    Created on : 30/09/2016, 16:40:56
    Author     : ebranco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="gymApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mandala Assessoria</title>
        <script src="resources/jquery/jquery-2.1.4.js" type="text/javascript"></script>
        <script src="resources/jquery/scrollspy.js" type="text/javascript"></script>
        <script src="resources/angularjs/external/angular.min.js" type="text/javascript"></script>
        <script src="resources/angularjs/external/angular-animate.min.js" type="text/javascript"></script>
        <script src="resources/angularjs/external/angular-sanitize.min.js" type="text/javascript"></script>
        <script src="resources/angularjs/external/ui-bootstrap-tpls.js" type="text/javascript"></script>
        <script src="resources/angularjs/modules/module.js" type="text/javascript"></script>
        <script src="resources/angularjs/controllers/HomeController.js" type="text/javascript"></script>
        <script src="resources/angularjs/controllers/modalController.js" type="text/javascript"></script>
        <script src="resources/angularjs/controllers/CarrouselController.js" type="text/javascript"></script>
        <script src="resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/estilo-desktop.css" rel="stylesheet" type="text/css" media="all and (min-width:700px)"/>
        <link href="resources/css/estilo-mobile.css" rel="stylesheet" type="text/css" media="all and (max-width:699px)"/>
    </head>
    <body ng-controller="homeController">

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>

                    </button>
                    <div class="scrollspy"><a class="navbar-brand" href="#home"><img id="logo" src="resources/imgs/mandala.png"></a></div>
                </div>
                <div class="collapse navbar-collapse scrollspy" id="myNavbar">
                    <ul class="nav navbar-nav">
                        <li class="col-md-push-5"><a class="text-menu" href="#home">HOME</a></li>
                        <li class="col-md-push-5"><a class="text-menu" href="#quemSomos">SOBRE A EMPRESA</a></li>
                        <li class="col-md-push-5"><a class="text-menu" href="#cv">TRAINERS</a></li>
                        <li class="col-md-push-5"><a class="text-menu" href="#servicos">SERVIÇOS</a></li> 
                        <li class="col-md-push-5"><a class="text-menu" href="#contato">CONTATO</a></li> 
                    </ul>
                </div>
            </div>
        </nav>

        <!--        <section id="home">
        
                </section>
        -->    

 
        <div id="home" class="carousel-section" style="background: black;"ng-controller="carrouselController">
            <div uib-carousel active="active" interval="myInterval" no-wrap="noWrapSlides">
                <div uib-slide ng-repeat="slide in slides track by slide.id" index="slide.id">
                    <img class="carousel-img" ng-src="{{slide.img}}"/>
                    <div class="carousel-caption">
                        <h4>Slide {{slide.id}}</h4>
                        <p>{{slide.text}}</p>
                    </div>
                </div>
            </div>
        </div>
        <section id="blank">
            <h2 class="text-center text-uppercase motivation">Transforme a motivação em hábito</h2>
        </section>
        <section id="quemSomos">
            <h2 class="text-center" style="font-family: district-bold-italic; color:#d9d9d9;">SOBRE A EMPRESA</h2><br>
            <p class="about">A Mandala Assessoria está presente desde 2012 fundada por Daniel Lindberg e Mônica Anônima, que tem como missão colaborar com as pessoas à atingirem suas metas, mostrando-lhes caminhos alternativos que possa vir contribuir com a agilidade, a preservação do bem-estar e a saúde até ao alcance do resultado. </p>
            <p class="about">A Mandala acredita que com o supervisionamento próximo e com o insetivo conseguirá fazer com que as pessoas consigam a atingir seus objetivos e assim ajudar elas em sua saúde, auto-estima e colaborar com a sociedade como um todo, tendo isso como seu maior valor.</p>
            <p class="about">Com isto a Mandala busca alcançar um nível nacional de pessoas para que todas tenham a possibilidade de conseguirem ter um acompanhamento adequado com foco no cliente,Todavia, o comprometimento entre as equipes acarreta um processo de reformulação e modernização do sistema de formação de quadros que corresponde às necessidades.</p>
        </section>
        <section id="cv">
            <h2 class="text-center" style="font-family: district-bold-italic; color:#d9d9d9;">Personal Trainers</h2>
            <br><br><br>
            <article class="row">
                <br>
                <div class="col-md-6 text-center" ng-repeat="personal in personals.personals">
                    <button class="btn btn-link"><img class="cv" id="cvMale"src="{{personal.img}}" ng-click="open('lg', personal)"/></button><br>
                    <label class="col-md-4 col-md-push-4" style="color:#d9d9d9;">{{personal.firstName}} {{personal.lastName}}</label>
                </div>
            </article>
        </section>
        <section id="servicos">
            <h2 class="text-uppercase text-center" style="font-family: district-bold-italic; color:white;">serviços</h2>
            <h1 class='text-uppercase text-center' style="font-family: district-bold-italic; color:white; margin-top: 200px;">em breve</h1>
        </section>
        <br>
        <section id="contato">

            <article class="row">
                <div class="col-md-12">
                    <h1 class="text-center" style="font-family: district-bold-italic;">CONTATO</h1>
                </div>
            </article>
            <br>
            <article class="row">
                <br><br>
                <div class="col-md-4 text-center scrollspy" id="menuFooter">
                    <ul class="col-md-12">
                        <li class="li-no-decoration"><label style="color:#cc0000;">MENU</label></li>
                        <li class="li-no-decoration"><a class="text-menu-down" href="#home">Home</a></li>
                        <li class="li-no-decoration"><a class="text-menu-down" href="#quemSomos">Quem Somos</a></li>
                        <li class="li-no-decoration"><a class="text-menu-down" href="#cv">Trainers</a></li>
                        <li class="li-no-decoration"><a class="text-menu-down" href="#servicos">Serviços</a></li>
                        <li class="li-no-decoration"><a class="text-menu-down" href="#contato">Contatos</a></li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="col-md-12" ng-repeat="personal in personals.personals">
                        <li class="li-no-decoration text-center"><p class="contact" >{{personal.email}}</p></li>
                    </ul>
                    <ul class="col-md-12" ng-repeat="personal in personals.personals">
                        <li class="li-no-decoration text-center"><p class="contact"><span class="glyphicon glyphicon-phone-alt"></span>(11){{personal.telefone}}</p></li>
                    </ul>
                    <br>
                    <ul class="col-md-12">
                        <li class="li-no-decoration text-center">
                            <address>
                                <strong>Mandala Assessoria, Inc.</strong><br>
                                Av. Eusébio Stevaux, nº4250<br>
                                Nações Unidas, SP 04848-020<br>
                                <label title="Phone" class="phone">Tel:</label> (11) 4456-7890
                            </address>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 text-center">
                    <img class="" id="logoFooter" src="resources/imgs/logo.png">    
                </div>
            </article>
        </section>

        <footer id="rodape">

            <article>
                <div class="col-md-3">
                    <p class="pull-left dev">Mandala Assessoria Inc © Copyright 2016</p>
                </div>
                <div class="col-md-6">
                    <p class="pull-left dev"><img src="resources/imgs/icon-facebook-big.png" height="50px" width="50px"></p>
                </div>
                <div class="col-md-3">
                    <p class="pull-right dev">By: Eder Rodrigues</p>
                </div>
            </article>
        </footer>
    </body>
</html>
