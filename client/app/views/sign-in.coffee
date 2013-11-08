module.exports = class HomeView extends Backbone.View

    template: require("views/templates/sign-in")

    render: ->
        @.$el.html(@template())
        return this