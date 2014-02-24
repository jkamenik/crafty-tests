Crafty.c('TimePrinter',{
  init: ->
    this.requires '2D, DOM, Text, Timer'
    this.attr({
      x: 100,
      y: 100,
      w: 200
    })
    self = this
    this.bind('RenderScene',->
      self.render()
    )
    
  render: ->
    this.text ''+this._secondsLeft+' seconds'
})