BasePage = require '../BasePage'

class ControlPage extends BasePage
  constructor: () ->
    @container = '.control'
    
    super @container
    @animationClass = new (require './animations/ControlAnimationPage')(@container)

    console.log '[ControlPage]'
    


  show: ->
    super()
    console.log 'ControlPage:show'

  hide: ->
    super()


module.exports= ControlPage