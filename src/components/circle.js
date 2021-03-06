// Generated by CoffeeScript 1.7.1
Crafty.c('Circle', {
  _radius: null,
  init: function() {
    this.requires('2D, Canvas');
    return this.bind("Draw", this._draw_me);
  },
  Circle: function(radius, color) {
    if (color == null) {
      color = "#000";
    }
    this.radius = radius;
    this.w = this.h = radius * 2;
    this.color = color;
    this.ready = true;
    return this;
  },
  _draw_me: function(e) {
    var ctx;
    ctx = e.ctx;
    ctx.fillStyle = this.color;
    ctx.beginPath();
    ctx.arc(this.x + this.radius, this.y + this.radius, this.radius, 0, Math.PI * 2);
    ctx.closePath();
    return ctx.fill();
  }
});
