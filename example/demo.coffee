angular.module 'app', ['builder', 'builder.components', 'validator.rules']

.controller 'DemoController', ($scope, $builder, $validator) ->
    # ----------------------------------------
    # builder
    # ----------------------------------------


    data = [{"id":2,"component":"textInput","editable":true,"index":0,"label":"Text Input","description":"description","placeholder":"placeholder","options":[],"required":false,"validation":"/.*/"},
            {"id":3,"component":"textArea","editable":true,"index":1,"label":"Text Area","description":"description","placeholder":"placeholder","options":[],"required":false,"validation":"/.*/"},
            {"id":4,"component":"checkbox","editable":true,"index":2,"label":"Checkbox","description":"description","placeholder":"placeholder","options":["value one","value two"],"required":false,"validation":"/.*/"},
            {"id":5,"component":"radio","editable":true,"index":3,"label":"Radio","description":"description","placeholder":"placeholder","options":["value one","value two"],"required":false,"validation":"/.*/"},
            {"id":6,"component":"select","editable":true,"index":4,"label":"Select","description":"description","placeholder":"placeholder","options":["value one","value two"],"required":false,"validation":"/.*/"}]
    for item in data
      textbox = $builder.addFormObject 'default',
        component: item.component
        label: item.label
        description: item.description
        placeholder: item.placeholder
        required: item.required
        editable: yes
        newRow: item.newRow

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
