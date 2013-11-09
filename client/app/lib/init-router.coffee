app = require('app')
routes = require('routes')

module.exports = ->
    router = app.router ?= new Backbone.Router

    match = (pattern, target, options = {}) ->
        [controllerName, action] = target.split('#')
        throw new Error('Route target must be of form controller#action') unless controllerName and action

        callAction = (args...) ->
            klass = require("controllers/#{controllerName}-controller")
            controller = new klass
            throw new Error("#{controllerName} controller has no action #{action}") unless controller[action]

            router.oldController = router.currentController
            router.currentController = controller
            controller[action](args...)

        router.route(pattern, target, callAction)

    routes(match)

    Backbone.history.start(pushState: yes)
