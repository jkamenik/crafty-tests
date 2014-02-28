Crafty.scene('Loading',->
  text = Crafty.e('CenterText').attr({w: 700}).recenter().text 'Loading'
  
  Crafty.load(["assets/iso_sprites.png"],
      # done
      ->
        
        Crafty.sprite(128, "assets/iso_sprites.png", {
            grass:    [0,0,1,1],
            grassSel: [0,1,1,1]
        })
        
        Crafty.scene 'main'
      # progress
      , (e) ->
        text.text "Percent #{e.percent}%, Loaded: #{e.src}"
      # error
      , (e) ->
        text.text "Unable to load #{e.src}"
        console.log 'Error', e
  )
)