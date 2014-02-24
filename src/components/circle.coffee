Crafty.c('Circle',{
  _radius: null,
  
  init: ->
    @requires '2D, Canvas'
    this.bind("Draw", this._draw_me)
  
  Circle: (radius,color = "#000")->
    @radius = radius
    @w = @h = radius * 2;
    @color = color
    @ready = true # to allow item to be drawn
    this
    
  _draw_me: (e)->
    ctx = e.ctx
    ctx.fillStyle = @color
    ctx.beginPath()
    ctx.arc(
      @x + @radius,
      @y + @radius,
      @radius,
      0,
      Math.PI * 2
    )
    ctx.closePath()
    ctx.fill()
})
