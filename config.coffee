exports.config =
  paths:
    public: 'client/dist'
    watched: ['client']

  files:
    javascripts:
      joinTo:
        'client/dist/js/app.js': /^client\/app/
        'client/dist/js/vendor.js': /^client\/(bower_components|vendor)/

    stylesheets:
      joinTo: 'client/dist/css/app.css'
    templates:
      joinTo: 'client/dist/js/app.js'

  modules:
    nameCleaner: (path) ->
      cleanPath = path.replace(/^client\//, '')
      cleanPath.replace(/^app\//, '')
