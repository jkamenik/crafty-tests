Crafty.scene 'main', ->
  width  = Crafty.viewport.width / 128
  height = Crafty.viewport.height / 128
  
  console.log width
  console.log height
  
  for x in [0...width]
    for y in [0...height]
      Crafty.e("SelectedSprite, Grid").selectedSprite('grass','grassSel').place(x,y)
