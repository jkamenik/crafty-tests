Crafty.scene('Loading',->
  colors = [
    '#ff0000','#00FF00', '#0000FF'
  ]
  currColor = 0;
  
  colorText = Crafty.e('2D, DOM, Text').textColor(colors[currColor]).attr({x: 50, y: 50, w: 200}).text('Current Color')
  
  Crafty.addEvent({}, Crafty.stage.elem, "mousedown", (event)->
    if event.button == 2
      currColor +=1 
      currColor = 0 if currColor >= colors.length
      Crafty('Text').each ->
        console.log this
        this.textColor colors[currColor]
    else
      Crafty.e("Circle").Circle(40, colors[currColor]).attr({x: event.x, y: event.y})
  );
)