class KeepAnimationPage
  constructor: (@container) ->
    
    @h1        = "#{@container} .keep__container__content  h1"
    @p         = "#{@container} .keep__container__content  p"
    @mail      = "#{@container} .keep__container__content  input.email"
    @send__btn = "#{@container} .keep__container__content  input.send__btn"

    @prepare() 
  
  prepare: ->
    TweenMax.set [@h1,@p,@mail], autoAlpha: 0
    TweenMax.set [@p,@h1], x: 500
    TweenMax.set @mail, x: -1000
    TweenMax.set @send__btn, x: 1000
    
  show: ->
    t = 0
    @tm = new TimelineMax paused: true

    @tm.to( [@h1,@p], .4, {autoAlpha: 0, ease: Ease.easeOut}, t+=.2)
    @tm.staggerTo( [@h1,@p], .5, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t+=.8)
    @tm.staggerTo( [@mail,@send__btn], .8, {autoAlpha: 1,x: 0, ease: Ease.easeOut}, t+=.1)

    @tm.play()
  hide: ->
  

module.exports = KeepAnimationPage
