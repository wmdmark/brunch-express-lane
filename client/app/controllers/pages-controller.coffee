module.exports = class PagesController extends require('lib/controller')
    home: ->
        HomeView = require("views/home")
        view = new HomeView()
        $(".app-views").html(view.render().el)
