angular.module "mirror"
  .controller "MainController", ($scope) ->
    $scope.langValues = [
      ['JavaScript/CoffeeScript', .98, 'rgb(242, 116, 44)'],
      ['HTML5', .9, 'rgb(242, 116, 44)']
      ['SASS/CSS', .9, 'rgb(242, 116, 44)']
      ['Java', .85, 'rgb(242, 116, 44)']
      ['Objective-C', .85, 'rgb(242, 116, 44)']
      ['Haxe', .8, 'rgb(242, 116, 44)']
      ['Ruby', .6, 'rgb(242, 116, 44)']
      ['PHP', .45, 'rgb(242, 116, 44)']
      ['C/C++', .3, 'rgb(242, 116, 44)']
    ]
    $scope.fwValues = [
      ['AngularJS', .98, 'rgb(11, 113, 185)']
      ['Android (FireOS)', .9, 'rgb(11, 113, 185)']
      ['iOS', .9, 'rgb(11, 113, 185)']
      ['PlayCanvas', .8, 'rgb(11, 113, 185)']
      ['Ruby on Rails', .7, 'rgb(11, 113, 185)']
      ['Wordpress', .55, 'rgb(11, 113, 185)']
      ['AWS', .45, 'rgb(11, 113, 185)']
      ['Node.js', .4, 'rgb(11, 113, 185)']
      ['PureMVC', .35, 'rgb(11, 113, 185)']
    ]
