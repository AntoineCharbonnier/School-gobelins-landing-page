BasePage = require '../BasePage'

class OnlinePage extends BasePage
  constructor: () ->
    @container = '.online'

    super @container

    @animationClass = new (require './animations/OnlineAnimationPage')(@container)

    console.log '[OnlinePage]'
    


  show: ->
    super()

    console.log 'OnlinePage:show'

  hide: ->
    super()


module.exports=OnlinePage