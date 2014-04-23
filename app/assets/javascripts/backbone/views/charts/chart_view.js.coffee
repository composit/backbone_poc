BackbonePoc.Views.Charts ||= {}

class BackbonePoc.Views.Charts.ChartView extends Backbone.View
  render: =>
    template = Handlebars.compile($('#chart-template').html())
    @$el.html(template(@model.toJSON()))
    @renderChart()
    return this

  renderChart: =>
    @barChart = new BarChart(data: @model.get('data'), element: @$('.chart').get(0))
    @barChart.draw()
    return this
