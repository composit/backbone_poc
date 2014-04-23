class BackbonePoc.Routers.ChartsRouter extends Backbone.Router
  initialize: (options) ->
    BackbonePoc.charts = new BackbonePoc.Collections.ChartsCollection()
    BackbonePoc.charts.reset(options.chartData)

  routes:
    '.*': 'index'

  index: ->
    @view = new BackbonePoc.Views.Charts.IndexView(charts: BackbonePoc.charts)
    $('#charts').html(@view.render().el)

