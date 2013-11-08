module.exports = (app, passport, auth) ->

    # TODO: API calls above this line
    app.get "/*", (req, res)->
        res.render("index", {})
    return