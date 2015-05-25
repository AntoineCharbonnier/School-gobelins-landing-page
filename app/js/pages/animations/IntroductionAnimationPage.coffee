class IntroductionAnimationPage
  constructor: (@container) ->

    @img = "#{@container} img"
    @bg  = "#{@container} .introduction__container"
    @bgBlack  = "#{@container} .introduction--background"

    @prepare()


  prepare: ->
    TweenMax.set @img, autoAlpha: 0
    TweenMax.set @img, x: -500

  show: ->

    t = 0
    @tm = new TimelineMax paused: true
    @tm.to( @bgBlack, .6, {autoAlpha: 0, ease: Back.easeOut}, t+=.3)
    @tm.to( @bg, .6, {className: "-=hide", ease: Back.easeOut}, t+=.3)
    @tm.to( @img, .6, {autoAlpha: 1, x: 0, ease: Back.easeOut}, t+=.3)
    @tm.play()

  hide: ->
  
module.exports = IntroductionAnimationPage
