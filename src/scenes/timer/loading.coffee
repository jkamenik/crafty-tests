Crafty.scene('Loading',->
  Crafty.e('2D, DOM, Text').text('Click to restart the timer').attr({x: 200, y: 100, w: 200})
  
  printer = Crafty.e("TimePrinter")
  printer.expiresIn 10, true
  
  Crafty.addEvent(this, Crafty.stage.elem, "mousedown", (e)->
    console.log 'mouse down'
    printer.addSeconds 5, true
  )
)