// Generated by CoffeeScript 1.7.1
Crafty.scene('Loading', function() {
  var text;
  text = Crafty.e('CenterText').attr({
    w: 700
  }).recenter().text('Loading');
  return Crafty.load(["assets/iso_sprites.png", "assets/highlight.png"], function() {
    Crafty.sprite(128, "assets/iso_sprites.png", {
      grass: [0, 0, 1, 1]
    });
    Crafty.sprite(128, "assets/highlight.png", {
      highlighter: [0, 0, 1, 1]
    });
    return Crafty.scene('main');
  }, function(e) {
    console.log('Progress', e);
    return text.text("Percent " + e.percent + "%, Loaded: " + e.src);
  }, function(e) {
    text.text("Unable to load " + e.src);
    return console.log('Error', e);
  });
});
