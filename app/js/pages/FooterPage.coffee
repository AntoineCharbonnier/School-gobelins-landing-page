BasePage = require '../BasePage'

class FooterPage extends BasePage
  constructor: () ->
    @container = '.footer'
    
    super @container
    @animationClass = new (require './animations/FooterAnimationPage')(@container)

    console.log '[FooterPage]'
    


  show: ->
    super()
    console.log '[FooterPage:show]'

  hide: ->
    super()

module.exports= FooterPage