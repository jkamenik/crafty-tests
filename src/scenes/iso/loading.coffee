Crafty.scene('Loading',->
  iso = Crafty.diamondIso.init(128,128,20,20);
  
  Crafty.addEvent({}, Crafty.stage.elem, "mousedown", (event)->
    console.log 'Mouse down', event
    iso.place(2, 1, 0, Crafty.e('2D, DOM, Color').color('red').attr({w:128, h:128}));
  );
  
)