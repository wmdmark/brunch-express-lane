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
        'js/vendor.js':  /^client\/(bower_components|vendor)/
      order:
        before: [
          'client/vendor/jquery-1.10.2.min.js', 
          'client/vendor/underscore-min.js', 
          'client/vendor/backbone-min.js',
        ]

    stylesheets:
      joinTo: 'css/app.css'
    templates:
      joinTo: 'js/app.js'

  modules:
    nameCleaner: (path) ->
      cleanPath = path.replace(/^client\//, '')
      cleanPath.replace(/^app\//, '')
