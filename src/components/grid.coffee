Crafty.c('Grid',{
  Grid: (width,height)->
    this.attr('gridW',width)
    this.attr('gridH',height)
    this
    
  # places an item on an X, Y based on its size
  place: (x,y)->
    values = this._setGrid()
    this.attr {
      x: x * values.w,
      y: y * values.h
    }
    this
    
  _setGrid: ->
    w = this.attr('gridW')
    this.attr('gridW', this.h) unless w
    
    h = this.attr('gridH')
    this.attr('gridH', this.h) unless h
    
    {
      h: this.attr('gridH')
      w: this.attr('gridW')
    }
    
})