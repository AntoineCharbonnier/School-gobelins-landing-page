class RealTimeAnimationPage
  constructor: (@container) ->
    
    @bigIMg  = "#{@container} .real-time__container .real-time__container_top img"
    @img     = "#{@container} .real-time__container .real-time__container_bottom img"
    @h1      = "#{@container} .real-time__container .real-time__container_bottom h1"
    @p       = "#{@container} .real-time__container .real-time__container_bottom p"

    @prepare() 
  

  prepare: ->
    TweenMax.set [@bigIMg,@img,@h1,@p], autoAlpha: 0
    TweenMax.set [@img,@h1,@p]
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.staggerTo( @bigIMg, 1.5, {autoAlpha: 1, ease: Ease.easeOut}, t)
    @tm.to( [@img,@h1,@p], .1, {autoAlpha: 0, ease: Ease.easeOut}, t+=.1)
    @tm.staggerTo( [@img,@h1,@p], .8, {autoAlpha: 1, ease: Ease.easeIn}, t+=.4)

    @tm.play()
  hide: ->
  

module.exports = RealTimeAnimationPage
