Crafty.c('ShiftingSprite',{
  init: ->
    this.requires "2D, DOM, Mouse"
    this.areaMap([64,0],[128,32],[128,96],[64,128],[0,96],[0,32])
    this.bind 'Click', this.onClick
    this.bind 'MouseOver', this.onMouseOver
    this.bind 'MouseOut', this.onMouseOut
    
  shiftingSprite: (first,second)->
    this.attr({
      sprites:  [first, second],
      selected: 0
    })
    this.addComponent first
    
  toggleSprite: ->
    sprites  = this.attr('sprites')
    selected = this.attr('selected')
    newSelected = selected + 1
    newSelected = 0 if newSelected > 1
    
    console.log sprites
    console.log selected
    console.log newSelected
    
    this.removeComponent sprites[selected]
    this.addComponent sprites[newSelected]
    this.attr 'selected', newSelected
    
  onClick: (event)->
    console.log event
    event.stopPropagation()
    this.toggleSprite()
    
  onMouseOver: ->
    console.log 'onMouseOver', this
    
  onMouseOut: ->
    console.log 'onMouseOut', this
})