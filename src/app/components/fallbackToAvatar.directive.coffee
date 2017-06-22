'use strict'

angular.module  'ngFallbackToAvatar.directives'
  .directive 'ngFallbackToAvatar', ($window, $state, $translate) ->

    return {
      restrict: 'AE'
      scope: {}

      bindToController:
        fallbackIsActive : '=?'
        img              : '='
        avatar           : "="
        ready            : "=?"


      controller  : 'FallbackToAvatarController as fallbackToAvatar'
      templateUrl : 'app/components/fallbackToAvatar/template.html'
    }