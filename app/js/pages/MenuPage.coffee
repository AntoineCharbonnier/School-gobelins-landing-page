BasePage = require '../BasePage'

class MenuPage extends BasePage
  constructor: () ->
    @container = '.menu'
    
    super @container

    @animationClass = new (require './animations/MenuAnimationPage')(@container)

    console.log '[MenuPage]'


  
  show: ->

    super()

    console.log 'MenuPage:show'

  hide: ->

    super()


module.exports= MenuPage