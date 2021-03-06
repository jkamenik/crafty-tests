// Generated by CoffeeScript 1.7.1
Crafty.scene('Loading', function() {
  var callback, expMils, expire, progress, progressBar;
  progressBar = Crafty.e("2D, DOM, ProgressBar");
  progressBar.attr({
    x: 150,
    y: 140,
    w: 100,
    h: 25,
    z: 100
  }).progressBar(100, false, "blue", "green").updateBarProgress(0);
  expMils = 100;
  expire = Date.now() + expMils;
  progress = 0;
  return callback = Crafty.bind('RenderScene', function() {
    var now;
    if (progress >= 100) {
      Crafty.unbind('RenderScene', callback);
    }
    now = Date.now();
    if (now >= expire) {
      progressBar.updateBarProgress((progress += 10));
      return expire = Date.now() + expMils;
    }
  });
});
