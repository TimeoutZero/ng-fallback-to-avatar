
angular.module 'ngFallbackToAvatar.controllers'
  .controller 'FallbackToAvatarController',
  ($scope, $translate, $timeout, $state, $stateParams, $q, $element) ->

    ###
    # Basic properties
    ###
    ctrl         = @
    ctrl.langKey = ''

    ###
    # Properties
    ###
    angular.extend ctrl,
      isLoading : no



    ###
    # Methods
    ###
    ctrl.actions =
      setDefaults: () ->
        _.defaults ctrl.img,
          url: 'not-a-picture'
          className: ''

        _.defaults ctrl.avatar,
          height    : '40'
          width     : '40'
          fontSize  : '20'
          className : ''
          shape     : 'round'

        return

      initialize: () ->
        if angular.isUndefined(ctrl.fallbackIsActive) then ctrl.fallbackIsActive = no
        if angular.isUndefined(ctrl.img) then ctrl.img = {}
        if angular.isUndefined(ctrl.avatar) then ctrl.avatar = {}
        ctrl.actions.setDefaults()
        return

      onLoadError: () ->
        ctrl.fallbackIsActive = yes
        return

      readyWatcher: () ->
        return ctrl.ready


    ###
    # Initialize
    ###
    ctrl.actions.initialize()

    $scope.$watch ctrl.actions.readyWatcher.bind(@), (newVal, oldVal) ->
      $timeout ->
        img = $element.find('img')
        if ctrl.ready and !ctrl.fallbackIsActive
          img.bind('error', ctrl.actions.onLoadError)
        else
          img.off('error')


    ###
    # Controller instance
    ###
    return @
