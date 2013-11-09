App = require('app')

module.exports = class SessionsController extends require('lib/controller')
    new: ->
        SignInView = require("views/sign-in")
        view = new SignInView()
        $(".app-views").html(view.render().el)
