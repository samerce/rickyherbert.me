angular.module "mirror"
  .directive 'timeline', ->


    restrict: 'E'
    scope: nodes: '='
    templateUrl: 'app/components/timeline/timeline.html'
    replace: true
