angular.module "mirror"
  .directive 'timeline', ->
    restrict: 'E'
    scope: nodes: '='
    templateUrl: 'app/components/timeline/timeline.html'
    replace: true
    controller: ($scope) -> setTimeout ->
      repositionTimelineNodes()
      $(window).resize repositionTimelineNodes


InterNodeMargin = 80
repositionTimelineNodes = ->
  leftColumns = $('.column.left .node')
  rightColumns = $('.column.right .node')
  totalRows = leftColumns.length + rightColumns.length
  leftIndex = 0
  rightIndex = 0
  timelinePosition = 0
  for [0...totalRows]
    if leftIndex <= rightIndex
      node = $(leftColumns[leftIndex])
      leftIndex++
    else
      node = $(rightColumns[rightIndex])
      rightIndex++
    node.css('top', timelinePosition)
    nodeHeight = node.outerHeight()
    timelinePosition += nodeHeight + InterNodeMargin
