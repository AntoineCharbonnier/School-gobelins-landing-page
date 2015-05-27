class ControlAnimationPage
  constructor: (@container) ->
    
    @bigIMg  = "#{@container} .control__container .control__container__content_right img"
    @img     = "#{@container} .control__container .control__container__content_left img"
    @h1      = "#{@container} .control__container .control__container__content_left h1"
    @p       = "#{@container} .control__container .control__container__content_left p"

    @prepare() 
  

  prepare: ->
    TweenMax.set [@bigIMg,@img,@h1,@p], autoAlpha: 0
    TweenMax.set [@img,@h1,@p]
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to( @bigIMg, .8, {autoAlpha: 1, ease: Ease.easeOut}, t+=.7)
    @tm.to( [@img,@h1,@p], .1, {autoAlpha: 0, ease: Ease.easeOut}, t+=.1)
    @tm.staggerTo( [@img,@h1,@p], .8, {autoAlpha: 1, ease: Ease.easeIn}, t+=.2)

    @tm.play()
  hide: ->
  

module.exports = ControlAnimationPage
