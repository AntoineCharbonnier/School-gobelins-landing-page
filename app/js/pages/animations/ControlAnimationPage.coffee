class ControlAnimationPage
  constructor: (@container) ->
    
    @bigIMg  = "#{@container} .control__container .control__container__content_right img"
    @img     = "#{@container} .control__container .control__container__content_left img"
    @h1      = "#{@container} .control__container .control__container__content_left h1"
    @p       = "#{@container} .control__container .control__container__content_left p"

    @prepare() 
  

  prepare: ->
    TweenMax.set [@bigIMg,@img,@h1,@p], autoAlpha: 0
    TweenMax.set [@img,@h1,@p], x: 500
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to( @bigIMg, .8, {autoAlpha: 1, ease: Ease.easeOut}, t)
    @tm.to( [@img,@h1,@p], .4, {autoAlpha: 0, ease: Ease.easeOut}, t+=.2)
    @tm.staggerTo( [@img,@h1,@p], .5, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t)

    @tm.play()
  hide: ->
  

module.exports = ControlAnimationPage
