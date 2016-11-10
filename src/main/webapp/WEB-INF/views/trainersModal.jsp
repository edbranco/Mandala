<%-- 
    Document   : trainersModal
    Created on : 08/10/2016, 12:33:42
    Author     : Eder Rodrigues
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/modal-desktop.css" rel="stylesheet" type="text/css" media="all and (min-width:1000px)"/>
        <link href="resources/css/modal-mobile.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="modal-header">
            <img class="mini-logo"src="resources/imgs/logo.png"/>
            <button type="button" class="btn btn-link pull-right" ng-click="cancel()"><span class="glyphicon glyphicon-remove"/></button>
        </header>
       
        <section class="modal-body">
            <div class="row">
                <div class="col-md-3">
                    <img class="cv" id="cvMale" src="{{selected.img}}" height="200px" width="200px" style="border:1px solid black;"/>
                    <ul>
                        <li class="li-no-decoration" id="liNome"><p class="list">{{selected.firstName}} {{selected.lastName}}</p></li>
                        <li class="li-no-decoration" id="liEmail"><p class="list">{{selected.email}}</p></li>
                    </ul>
                </div>
                <br>
                <br>
                <div class="col-md-6">
                    <ul>
                        <li class="datas"><p style='color:black'>{{selected.universidade}}</p></li>
                        <li class="datas"><p style='color:black'>{{selected.curso}}</p></li>
                        <li class="datas"><p style='color:black'>{{selected.descricao}}</p></li>
                    </ul>
                </div>
            </div>

        </section>
        
        <section class="modal-footer">
            <button class="btn btn-primary btn-block" ng-click="ok()">OK</button>
        </section>

    </body>
</html>
