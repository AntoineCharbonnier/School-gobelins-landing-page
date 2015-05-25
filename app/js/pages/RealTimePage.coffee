BasePage = require '../BasePage'

class RealTimePage extends BasePage
  constructor: () ->
    @container = '.real-time'
    
    super @container
    @animationClass = new (require './animations/RealTimeAnimationPage')(@container)

    console.log '[RealTimePage]'
    


  show: ->
    super()
    console.log 'RealTimePage:show'

  hide: ->
    super()


module.exports= RealTimePage