Crafty.c('Timer',{
  _stopFunc:    null,
  _expireTime:  null,
  _secondsLeft: null,
  
  start: ->
    return if this._stopFunc
    return if this._calculateTime <= 0
    
    self = this
    this._stopFunc = Crafty.bind('EnterFrame', ->
      # a proxy callback which sets the "this"
      self._calculateTime()
    )
    this
    
  stop: ->
    return unless this._stopFunc
    Crafty.unbind('EnterFrame', this._stopFunc)
    this._stopFunc = null
    this
    
  expiresIn: (seconds, autoStart = false)->
    this._expireTime = Date.now() + (seconds * 1000)
    this.start() if autoStart
    this
    
  addSeconds: (seconds, autoStart = false)->
    this._expireTime = Date.now() if this._secondsLeft <= 0
    this._expireTime += (seconds * 1000)
    this.start() if autoStart
    this
    
  _calculateTime: (event)->
    now  = Date.now()
    left = this._expireTime - now
    this._secondsLeft = Math.floor(left / 1000)
    
    this.stop() if this._secondsLeft <= 0
    this._secondsLeft
})
