module.exports = class AppRouter extends Backbone.Router

    routes:
        "": "home"
        "sign-in": "signin"

    home: ->
        console.log "home()"
        HomeView = require("views/home")
        home = new HomeView(el: $(".views"))
        home.render()

    signin: ->
        console.log "signin()"
        SignInView = require("views/sign-in")
        signin = new SignInView(el: $(".views"))
        signin.render()


