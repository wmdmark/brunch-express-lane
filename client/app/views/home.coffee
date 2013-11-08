module.exports = class HomeView extends Backbone.View

    template: require("views/templates/home")

    render: ->
        @.$el.html(@template())
        return this