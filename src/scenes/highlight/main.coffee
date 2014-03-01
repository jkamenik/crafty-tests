Crafty.scene 'main', ->
  width  = Crafty.viewport.width / 128
  height = Crafty.viewport.height / 128
  
  for x in [0...width]
    for y in [0...height]
      # break if x > 0 || y > 0
      Crafty.e("grass, Grid, HighlightedSprite").place(x,y)
