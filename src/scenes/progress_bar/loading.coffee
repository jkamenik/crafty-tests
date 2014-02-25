Crafty.scene('Loading',->
  progressBar = Crafty.e("2D, DOM, ProgressBar")
  progressBar
    .attr({ x: 150, y : 140, w: 100, h: 25, z: 100 })
    .progressBar(100, false, "blue", "green")
    .updateBarProgress(0)
  
  expMils  = 100
  expire   = Date.now() + expMils # one second
  progress = 0
  callback = Crafty.bind('RenderScene',->
    Crafty.unbind 'RenderScene', callback if progress >= 100
    
    now = Date.now()
    if now >= expire
      progressBar.updateBarProgress (progress+=10)
    
      expire = Date.now() + expMils
  )
)