Crafty.c('HighlightedSprite',{
  init: ->
    this.requires "2D, DOM, Mouse"
    this.areaMap([64,0],[128,32],[128,96],[64,128],[0,96],[0,32])
    this.bind 'Click', this.onClick
    
    selector = Crafty.e('2D, DOM, highlighter').attr({
      x: -1000,
      y: -1000
    })
    this.attr 'selector', selector
    
  toggleSelect: (selected=null)->
    selected = this.attr('selected') unless selected
    
    if selected
      this.unselect()
    else
      this.select()
      
  select: ->
    this.attr 'selected', true
    
    sel = this.attr 'selector'
    sel.attr {
      x: this.x,
      y: this.y,
      z: this.z - 1
    }
    
  unselect: ->
    this.attr 'selected', false
    
    sel = this.attr 'selector'
    sel.attr {
      x: -1000,
      y: -1000
    }
    
  onClick: (event)->
    console.log 'Click', event, this
    event.stopPropagation()
    this.toggleSelect()
})