class OnlineAnimationPage
  constructor: (@container) ->
    
    @bigIMg  = "#{@container} .online__container img"
    @img     = "#{@container} .online__container .online__container__content img"
    @h1      = "#{@container} .online__container .online__container__content h1"
    @p       = "#{@container} .online__container .online__container__content p"

    @prepare() 
  

  prepare: ->
    TweenMax.set [@bigIMg,@img,@h1,@p], autoAlpha: 0
    TweenMax.set [@img,@h1,@p], x: 500
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to( @bigIMg, .8, {autoAlpha: 1, ease: Ease.easeOut}, t)
    @tm.to( [@img,@h1,@p], .1, {autoAlpha: 0, ease: Ease.easeOut}, t+=.2)
    @tm.staggerTo( [@img,@h1,@p], .5, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t)

    @tm.play()
  hide: ->
  

module.exports = OnlineAnimationPage
