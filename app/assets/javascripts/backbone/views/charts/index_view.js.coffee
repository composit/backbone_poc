BackbonePoc.Views.Charts ||= {}

class BackbonePoc.Views.Charts.IndexView extends Backbone.View

  initialize: (options) ->
    @charts = options.charts
    @charts.on 'reset', @addAll

  addAll: ->
    @charts.each(@addOne)

  addOne: (chart) =>
    view = new BackbonePoc.Views.Charts.ChartView(model: chart)
    @$el.append(view.render().$el)

  render: ->
    @addAll()
    return this
