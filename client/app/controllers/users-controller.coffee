module.exports = class SessionsController extends require('lib/controller')
    new: ->
        SignUpView = require("views/sign-up")
        user = new User()
        view = new SignUpView(model: App.user)
        $(".app-views").html(view.render().el)
