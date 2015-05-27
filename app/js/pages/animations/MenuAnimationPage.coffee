class MenuAnimationPage
  constructor: (@container) ->

    @img = "#{@container} img"
    @h3 = "#{@container} ul li a h3"

    @prepare()


  prepare: ->
    TweenMax.set [@img, @h3], autoAlpha: 0
    TweenMax.set @h3
    TweenMax.set @img


  show: ->

    t = 0
    @tm = new TimelineMax paused: true
    @tm.to( @img, .6, {autoAlpha: 1, ease: Back.easeOut}, t+=.3)
    @tm.staggerTo( @h3, .6, {autoAlpha: 1, ease: Back.easeOut}, t+=.1)
    @tm.play()

  hide: ->
  

module.exports = MenuAnimationPage
