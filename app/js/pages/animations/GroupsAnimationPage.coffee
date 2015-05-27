class GroupsAnimationPage
  constructor: (@container) ->
    
    @bigIMg  = "#{@container} .groups__container  img"
    @a       = "#{@container}   a"
    @img     = "#{@container} .groups__container_content  img"
    @h1      = "#{@container} .groups__container_content  h1"
    @p       = "#{@container} .groups__container_content  p"

    # @bg      = "#{@container} .groups__container_content--background"

    @prepare() 
  

  prepare: ->
    TweenMax.set [@bigIMg,@img,@h1,@p,@a], autoAlpha: 0
    TweenMax.set [@img,@h1,@p], x: 500
    TweenMax.set @a, y: 500
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    # @tm.to(@bg, .4, {autoAlpha: 1, ease: Ease.easeOut}, t+=.3)
    @tm.to( @bigIMg, 1.5, {autoAlpha: 1, ease: Ease.easeOut}, t+=.5)
    @tm.to( [@img,@h1,@p], .1, {autoAlpha: 0, ease: Ease.easeOut}, t+=.1)
    @tm.staggerTo( [@img,@h1,@p], .5, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t+=.2)
    @tm.to( @a, .8, {autoAlpha: 1,y: 0, ease: Back.easeOut}, t+=.4)

    @tm.play()
  hide: ->
  

module.exports = GroupsAnimationPage
