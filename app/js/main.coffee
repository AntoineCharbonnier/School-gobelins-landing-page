PagesTypes = require './PagesTypes'
# VideoModule = require './VideoModule'


class App
  constructor: () ->
    console.log '[APP]'

    @scrollManager = (require './ScrollManager').get()

    @pages = {}
    @pages[PagesTypes.INTRO]    = new (require './pages/IntroductionPage')()
    @pages[PagesTypes.MENU]   = new (require './pages/MenuPage')()
    # # @pages[PagesTypes.VIDEO]   = new (require './pages/VideoModule')()
    @pages[PagesTypes.ONLINE]  = new (require './pages/OnlinePage')()
    @pages[PagesTypes.CONTROL]  = new (require './pages/ControlPage')()
    @pages[PagesTypes.REALTIME]  = new (require './pages/RealTimePage')()
    @pages[PagesTypes.DATA] = new (require './pages/DataPage')()
    @pages[PagesTypes.GROUPS] = new (require './pages/GroupsPage')()
    @pages[PagesTypes.KEEP] = new (require './pages/KeepPage')()
    @pages[PagesTypes.CONTACT]  = new (require './pages/ContactPage')()
    @pages[PagesTypes.FOOTER]  = new (require './pages/FooterPage')()


    @scrollManager.addPages @pages

    # set top
    window.scrollTop = 0
    # @pages['introduction'].show()
    # @pages['meet-us'].show()
    # @video =  new (require './pages/VideoModule')() 

  resize: ->





app = null


# equal to jquery document ready function
document.addEventListener 'DOMContentLoaded', () =>
  app = new App()

  # resize app
  window.addEventListener 'resize', () =>
    app.resize()
  , false
  
