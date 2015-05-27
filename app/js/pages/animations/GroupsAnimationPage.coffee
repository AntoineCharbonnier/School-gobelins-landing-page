class GroupsAnimationPage
  constructor: (@container) ->
    
    @bigIMg  = "#{@container} .groups__container  img"
    @a       = "#{@container}   a"
    @img     = "#{@container} .groups__container_content  img"
    @h1      = "#{@container} .groups__container_content  h1"
    @p       = "#{@container} .groups__container_content  p"


    @prepare() 
  

  prepare: ->
    TweenMax.set [@bigIMg,@img,@h1,@p,@a], autoAlpha: 0
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to( @bigIMg, 1.5, {autoAlpha: 1, ease: Ease.easeOut}, t+=.5)
    @tm.to( [@img,@h1,@p], .1, {autoAlpha: 0, ease: Ease.easeOut}, t+=.1)
    @tm.staggerTo( [@img,@h1,@p], .5, {autoAlpha: 1, ease: Ease.easeIn}, t+=.2)
    @tm.to( @a, .8, {autoAlpha: 1, ease: Back.easeIn}, t+=.4)

    @tm.play()
  hide: ->
  

module.exports = GroupsAnimationPage
