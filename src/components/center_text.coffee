Crafty.c 'CenterText',{
    init: ->
      this.requires('2D, DOM, Text')
      this.recenter()
      
    recenter: ->
      this.attr({
        x: (Crafty.viewport.width - this.attr('w')) / 2, 
        y: (Crafty.viewport.height - this.attr('h')) / 2
      })
      this
}