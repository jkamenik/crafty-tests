Crafty.scene('Game',->
  iso = Crafty.isometric.size(128);
  
  obj = Crafty.e("ShiftingSprite").shiftingSprite('grass','stone')
  
  iso.place(1,1,0,obj)
  
  Crafty.addEvent({}, window.document, "click", (event)->
    pos = iso.px2pos(event.clientX,event.clientY)
    console.log 'DOM mouse down event', event, pos
    iso.place pos.x, pos.y, 0, Crafty.e("ShiftingSprite").shiftingSprite('grass','stone')
  )
)