/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var app = angular.module("gymApp");
app.controller("carrouselController", function ($scope) {
    $scope.myInterval = 2000;
    $scope.noWrapSlides = false;
    $scope.active =0;
    $scope.slides = [
        {
            img: "resources/imgs/home2.jpg",
            text: "Aumenta sua capacidade",
            id: 0
        },
        {
            
            img: "resources/imgs/home.jpg",
            text: "Aumenta sua força",
            id: 1
        }];
    console.log($scope.slides);

});