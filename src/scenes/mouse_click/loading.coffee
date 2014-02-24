Crafty.scene('Loading',->
  Crafty.addEvent({}, Crafty.stage.elem, "mousedown", (event)->
    Crafty.e("Circle").at(event.x,event.y)
  );
)