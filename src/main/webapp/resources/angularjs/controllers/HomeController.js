/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var app = angular.module("gymApp");
app.controller("homeController", function ($scope, $uibModal, $log) {

    $scope.personals={
        "personals":[
            {"firstName":"Daniel","lastName":"Lindberg","age":30,"email":"lindberg.dani@gmail.com","img":"resources/imgs/CR7.png","universidade":"Universidade Paulista","curso":"Bacharelado em Educação Física","telefone":"95663-3179","descricao":"Atuando na área desde 2012 buscando o melhor para os seus pupilos, passando por grandes academias como AMS Company, Bio Ritmo e além da vasta experiência como Personal Trainer."},
            {"firstName":"Beatriz","lastName":"Rodrigues","age":25,"email":"rodrigues.beatriz@gmail.com", "img":"resources/imgs/woman2.jpg","universidade":"FMU","curso":"Bacharelado em Educação Física","telefone":"95663-3119","descricao":"Atuando na área desde 2012 buscando o melhor para os seus pupilos, passando por grandes academias como Makro Academia, Smartfit e além da vasta experiência como Personal Trainer."}
        ]
    };
    console.log($scope.personals.personals);
    var $ctrl = this;
    $ctrl.animationsEnabled = true;

    $scope.open = function (size,personal) {
        var modalInstance = $uibModal.open({
            animation: $ctrl.animationsEnabled,
            ariaLabelledBy: 'modal-title',
            ariaDescribedBy: 'modal-body',
            templateUrl: 'trainersModal',
            controller: 'modalController',
            size: size,
            resolve: {
                personals: function () {
                    return $scope.personals;
                },
                selected: function(){
                    return personal;
                }
            }
        });

        modalInstance.result.then(function () {
//            $ctrl.selected = selectedItem;
        }, function () {
            $log.info('Modal dismissed at: ' + new Date());
        });
    };
});
