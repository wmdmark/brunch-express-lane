module.exports = (app, passport, auth) ->
    

    app.get "/", (req, res)->
        res.render("index", {})

    # User routes
    # users = require '../app/controllers/users'
    # app.get '/login', users.login

    # app.post '/login', passport.authenticate('local',
    #     failureRedirect: '/login'
    #     failureFlash: true),

    #     (req, res) ->
    #         res.redirect '/'
    #         return

    # app.get '/logout', users.logout
    
    # app.get '/users', auth.requiresLogin, users.index
    # app.get '/users/new', auth.requiresLogin, users.new
    # app.post '/users', auth.requiresLogin, users.create
    # app.get '/users/:userId/edit', auth.requiresLogin, users.edit
    # app.put '/users/:userId', auth.requiresLogin, users.update
    # app.get '/users/:userId/destroy', auth.requiresLogin, users.destroy

    # app.param 'userId', users.user

    return