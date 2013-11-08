module.exports = class View extends Backbone.View

    # Turn on rivets.js binding
    bind: yes

    render: ->
        @.$el.html(@template({}))
        @applyBindings() if @model? and @bind
        return this

    applyBindings: ->
        rivets.bind(@.$el, @getBindData())

    getBindData: ->
        data: @model
