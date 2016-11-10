/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var app = angular.module("gymApp");
app.controller("modalController", function ($scope, $uibModalInstance, personals, selected) {
    $scope.selected = selected;
    $scope.personals = personals;


    $scope.ok = function () {
        $uibModalInstance.close();
    };

    $scope.cancel = function () {
        $uibModalInstance.dismiss('cancel');
    };

});