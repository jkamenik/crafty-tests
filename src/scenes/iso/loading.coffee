Crafty.scene('Loading',->
  Crafty.e('CenterText').text('Loading')
  
  Crafty.sprite(128, "assets/iso_sprites.png", {
      grass:    [0,0,1,1],
      grassSel: [0,1,1,1],
      stone:    [1,0,1,1],
      stoneSel: [1,1,1,1]
  })
  
  Crafty.scene('Game')
)