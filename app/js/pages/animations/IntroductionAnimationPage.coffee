class IntroductionAnimationPage
  constructor: (@container) ->

    @img = "#{@container} img"
    @h1 = "#{@container} h1"
    @a = "#{@container} a"
    @p = "#{@container} p"
    @bg  = "#{@container} .introduction__container"
    @bgBlack  = "#{@container} .introduction--background"

    @prepare()


  prepare: ->
    TweenMax.set @img, autoAlpha: 0
    TweenMax.set @h1, autoAlpha: 0
    TweenMax.set @p, autoAlpha: 0
    TweenMax.set @a, autoAlpha: 0
    TweenMax.set @img

  show: ->

    t = 0
    @tm = new TimelineMax paused: true
    @tm.to( @bgBlack, .6, {autoAlpha: 0, ease: Back.easeOut}, t+=.3)
    @tm.to( @bg, .6, {className: "-=hide", ease: Back.easeOut}, t+=.3)
    @tm.to( @img, 1, {autoAlpha: 1, ease: Ease.easeIn}, t+=.3)
    @tm.to( @h1, 1, {autoAlpha: 1, ease: Ease.easeIn}, t+=.3)
    @tm.to( @p, 1, {autoAlpha: 1, ease: Ease.easeIn}, t+=.3)
    @tm.to( @a, 1, {autoAlpha: 1, ease: Ease.easeIn}, t+=.3)
    @tm.play()

  hide: ->
  
module.exports = IntroductionAnimationPage
