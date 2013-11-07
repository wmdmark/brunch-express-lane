exports.config =
  conventions:
    assets: /^client\/app\/assets\//

  paths:
    public: 'client/dist'
    watched: ['client']

  files:
    javascripts:
      joinTo:
        'js/app.js': /^client\/app/
        'js/vendor.js': /^client\/bower_components/

    stylesheets:
      joinTo: 'css/app.css'
    templates:
      joinTo: 'js/app.js'

  modules:
    nameCleaner: (path) ->
      cleanPath = path.replace(/^client\//, '')
      cleanPath.replace(/^app\//, '')
