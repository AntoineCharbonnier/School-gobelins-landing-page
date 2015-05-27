class ContactAnimationPage
  constructor: (@container) ->
    
    # @bigIMg  = "#{@container}   img"
    @h1     = "#{@container} .contact__container__top h1"
    @lefth2 = "#{@container} .contact__container__content--left h2"
    @lefth3 = "#{@container} .contact__container__content--left h3"
    @lefta  = "#{@container} .contact__container__content--left a"

    @righth2  = "#{@container} .contact__container__content--right h2"
    @righth3  = "#{@container} .contact__container__content--right h3"
    @righta   = "#{@container} .contact__container__content--right a"


    # @p       = "#{@container} .data__container_content  p"

    # @bg      = "#{@container} .data__container_content--background"

    @prepare() 
  

  prepare: ->
    TweenMax.set [@h1,@lefth2,@lefth3,@lefta, @righth2, @righth3, @righta], autoAlpha: 0
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to(@h1, .4, {autoAlpha: 1,x:0 ,ease: Ease.easeOut}, t+=.3)
    @tm.staggerTo( [@lefth2,@lefth3,@lefta], .5, {autoAlpha: 1, ease: Ease.easeIn}, t)
    @tm.staggerTo( [@righth2, @righth3, @righta], .5, {autoAlpha: 1, ease: Ease.easeIn}, t)

    @tm.play()
  hide: ->
  

module.exports = ContactAnimationPage
