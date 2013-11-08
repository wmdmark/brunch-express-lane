User = require("models/user")
App = require("app")
App.user ?= new User()

module.exports = class AppRouter extends Backbone.Router

    routes:
        "": "home"
        "sign-in": "signin"
        "sign-up": "signup"

    home: ->
        HomeView = require("views/home")
        view = new HomeView()
        $(".app-views").html(view.render().el)

    signin: ->
        SignInView = require("views/sign-in")
        user = new User()
        view = new SignInView(model: App.user)
        $(".app-views").html(view.render().el)

    signup: ->
        SignUpView = require("views/sign-up")
        user = new User()
        view = new SignUpView(model: App.user)
        $(".app-views").html(view.render().el)


