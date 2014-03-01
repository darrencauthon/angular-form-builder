angular.module 'app', ['builder', 'builder.components', 'validator.rules']

.controller 'DemoController', ($scope, $builder, $validator) ->
    # ----------------------------------------
    # builder
    # ----------------------------------------
    #textbox = $builder.addFormObject 'default',
    #component: 'textInput'
    #label: 'Name'
    #description: 'Your name'
    #placeholder: 'Your name'
    #required: yes
    #editable: no

    # formObjects
    $scope.form = $builder.forms['default']

    # ----------------------------------------
    # form
    # ----------------------------------------
    # user input value
    $scope.input = []
    $scope.defaultValue = {}
    # formObjectId: default value
    #$scope.defaultValue[textbox.id] = 'default value'

    $scope.submit = ->
        $validator.validate $scope, 'default'
        .success -> console.log 'success'
        .error -> console.log 'error'
