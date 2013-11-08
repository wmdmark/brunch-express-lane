View = require("utils/view")

module.exports = class Form extends View

    tagName: "form"
    className: "form-signin"

    render: ->
        super()
        # TODO: setup validation
        return this