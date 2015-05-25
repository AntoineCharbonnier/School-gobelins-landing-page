BasePage = require '../BasePage'

class GroupsPage extends BasePage
  constructor: () ->
    @container = '.groups'
    
    super @container
    @animationClass = new (require './animations/GroupsAnimationPage')(@container)

    console.log '[GroupsPage]'
    


  show: ->
    super()
    console.log '[GroupsPage:show]'

  hide: ->
    super()

module.exports= GroupsPage