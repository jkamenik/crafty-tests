Crafty.c('Circle',{
  init: ->
    console.log 'Circle init'
    this.requires '2D, DOM, Text'
    this.text 'Mouse click'
    this
  
  at: (x,y)->
    this.attr({
      x: x,
      y: y
    })
    this
})