class DataAnimationPage
  constructor: (@container) ->
    
    @bigIMg  = "#{@container}   img"
    @img     = "#{@container} .data__container_content  img"
    @h1      = "#{@container} .data__container_content  h1"
    @p       = "#{@container} .data__container_content  p"

    @bg      = "#{@container} .data__container_content--background"

    @prepare() 
  

  prepare: ->
    TweenMax.set [@bigIMg,@img,@h1,@p,@bg], autoAlpha: 0
    TweenMax.set [@img,@h1,@p], x: 500
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to(@bg, .4, {autoAlpha: 1, ease: Ease.easeOut}, t+=.3)
    @tm.to( @bigIMg, 1.5, {autoAlpha: 1, ease: Ease.easeOut}, t+=.5)
    @tm.to( [@img,@h1,@p], .4, {autoAlpha: 0, ease: Ease.easeOut}, t+=.2)
    @tm.staggerTo( [@img,@h1,@p], .5, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t)

    @tm.play()
  hide: ->
  

module.exports = DataAnimationPage
