Crafty.c 'CenterText',{
    init: ->
        this.requires('2D, DOM, Text')
        this.attr({x: Crafty.DOM.window.width / 2, y: Crafty.DOM.window.height / 2})
}