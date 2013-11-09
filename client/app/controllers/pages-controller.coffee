module.exports = class PagesController extends require('lib/controller')
    home: ->
        HomeView = require("views/home")
        home = new HomeView(el: $(".views"))
        home.render()
