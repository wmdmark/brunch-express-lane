module.exports = class SessionsController extends require('lib/controller')
    new: ->
        SignInView = require("views/sign-in")
        signin = new SignInView(el: $(".views"))
        signin.render()
