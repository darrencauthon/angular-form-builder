(function() {
  angular.module('app', ['builder', 'builder.components', 'validator.rules']).controller('DemoController', function($scope, $builder, $validator) {
    var data, item, textbox, _i, _len;
    data = [
      {
        "id": 2,
        "component": "textInput",
        "editable": true,
        "index": 0,
        "label": "Text Input",
        "description": "description",
        "placeholder": "placeholder",
        "options": [],
        "required": false,
        "validation": "/.*/",
        newRow: true
      }, {
        "id": 3,
        "component": "textArea",
        "editable": true,
        "index": 1,
        "label": "Text Area",
        "description": "description",
        "placeholder": "placeholder",
        "options": [],
        "required": false,
        "validation": "/.*/",
        newRow: true
      }, {
        "id": 4,
        "component": "checkbox",
        "editable": true,
        "index": 2,
        "label": "Checkbox",
        "description": "description",
        "placeholder": "placeholder",
        "options": ["value one", "value two"],
        "required": false,
        "validation": "/.*/",
        newRow: true
      }, {
        "id": 5,
        "component": "radio",
        "editable": true,
        "index": 3,
        "label": "Radio",
        "description": "description",
        "placeholder": "placeholder",
        "options": ["value one", "value two"],
        "required": false,
        "validation": "/.*/",
        newRow: true
      }, {
        "id": 6,
        "component": "select",
        "editable": true,
        "index": 4,
        "label": "Select",
        "description": "description",
        "placeholder": "placeholder",
        "options": ["value one", "value two"],
        "required": false,
        "validation": "/.*/",
        newRow: true
      }
    ];
    for (_i = 0, _len = data.length; _i < _len; _i++) {
      item = data[_i];
      textbox = $builder.addFormObject('default', {
        component: item.component,
        label: item.label,
        description: item.description,
        placeholder: item.placeholder,
        required: item.required,
        editable: true,
        newRow: item.newRow
      });
    }
    $scope.form = $builder.forms['default'];
    $scope.input = [];
    $scope.defaultValue = {};
    return $scope.submit = function() {
      return $validator.validate($scope, 'default').success(function() {
        return console.log('success');
      }).error(function() {
        return console.log('error');
      });
    };
  });

}).call(this);
