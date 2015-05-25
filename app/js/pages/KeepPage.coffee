BasePage = require '../BasePage'

class KeepPage extends BasePage
  constructor: () ->
    @container = '.keep'
    
    super @container
    @animationClass = new (require './animations/KeepAnimationPage')(@container)

    console.log '[KeepPage]'
    


  show: ->
    super()
    console.log 'KeepPage:show'
  hide: ->
    super()


module.exports= KeepPage