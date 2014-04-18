class BackbonePoc.Models.Chart extends Backbone.Model
  paramRoot: 'chart'

  defaults:
    data: null

class BackbonePoc.Collections.ChartsCollection extends Backbone.Collection
  model: BackbonePoc.Models.Chart
  url: '/charts'
