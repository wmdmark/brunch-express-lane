App = require('app')

module.exports = class UsersController extends require('lib/controller')
    new: ->
        SignUpView = require("views/sign-up")
        view = new SignUpView(model: App.user)
        $(".app-views").html(view.render().el)
