express = require('express')
mongoStore = require('connect-mongo')(express)
flash = require('connect-flash')
helpers = require('view-helpers')
path = require('path')
swig = require('swig')

module.exports = (app, config, passport) ->
    app.set('showStackError', true)

    app.use(express.compress({
        filter: (req, res) ->
            return /json|text|javascript|css/.test(res.getHeader('Content-Type'))
        level: 9
    }))
        
    console.log "view path: #{path.join(__dirname, "../app/views/")}"

    app.engine('html', swig.renderFile)
    app.set('view engine', 'html')
    app.set('views', path.join(__dirname, "../app/views/"));

    app.configure ->
        app.use(helpers(config.app.name))
        app.use(express.cookieParser())
        app.use(express.bodyParser())
        
        # Support for using PUT, DEL etc. in forms using hidden _method field
        app.use(express.methodOverride())

        app.use(express.session({
            secret: 'p8z1ahyasdf8rehu79jskhm6aj3',
            store: new mongoStore({
                url: config.db,
                collection : 'sessions'
            })
        }))
        
        app.use(express.favicon(path.join(__dirname, '../assets/img/favicon.ico')))

        app.use(flash())

        app.use(passport.initialize())
        app.use(passport.session())
        app.use(express.static(path.join(__dirname, '../../client/dist')))
        #app.use(require('connect-assets')())

        app.use(app.router)
        return

    app.configure 'development', ->
        console.log 'Configuring development environment'
        app.set('view cache', false)
        swig.setDefaults({ cache: false })
        app.use express.errorHandler()
        app.locals.pretty = true
        return

    return