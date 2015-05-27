class FooterAnimationPage
  constructor: (@container) ->
    
    @h1     = "#{@container} .footer__container--left h1"
    @lefth2 = "#{@container} .footer__container--left ul li h3"
    @lefth3 = "#{@container} .footer__container--left ul li img"

    @righth1  = "#{@container} .footer__container--right h1"
    @rightp  = "#{@container} .footer__container--right p"

    @prepare() 
  

  prepare: ->
    TweenMax.set [@h1,@lefth2,@lefth3, @righth1, @rightp], autoAlpha: 0
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to(@h1, .4, {autoAlpha: 1 ,ease: Ease.easeOut}, t+=.3)
    @tm.staggerTo( [@lefth2,@lefth3], .5, {autoAlpha: 1,ease: Ease.easeIn}, t)
    @tm.staggerTo( [@righth1, @rightp], .5, {autoAlpha: 1,ease: Ease.easeIn}, t)

    @tm.play()
  hide: ->
  

module.exports = FooterAnimationPage
