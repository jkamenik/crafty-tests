Crafty.c('SelectedSprite',{
  init: ->
    this.requires "2D, DOM, Mouse"
    this.areaMap([64,0],[128,32],[128,96],[64,128],[0,96],[0,32])
    this.bind 'Click', this.onClick
    
  selectedSprite: (first,second)->
    this.attr({
      normSprite:  first,
      selSprite:   second,
      selected:    false
    })
    this.addComponent first
    this
    
  toggleSprite: ->
    console.log 'Toggle'
    if this.attr('selected')
      this.attr('selected',false)
    else
      this.attr('selected',true)
      
    this.toggleComponent this.attr('normSprite'), this.attr('selSprite')
    this
    
  onClick: (event)->
    console.log 'Click', event, this
    event.stopPropagation()
    this.toggleSprite()
})