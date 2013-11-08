# Brunch Express Lane

Brunch Express Lane is a "full stack" [Brunch](http://brunch.io/) app skeleton with an Express server for the backend and Backbone.js for the front end.

## Languages

- [CoffeeScript](http://coffeescript.org/)
- [Swig](http://paularmstrong.github.io/swig/)
- [Sass](http://sass-lang.com/)

## Features

- [Express](http://expressjs.com/)
- [jQuery](https://github.com/jquery/jquery)
- [Backbone](https://github.com/jashkenas/backbone)
- [Bootstrap 3](http://getbootstrap.com/)

## Plugins

- [Brunch Auto-Reload](https://github.com/brunch/auto-reload-brunch)

## Getting started

    $ npm install -g brunch nodemon testem
    $ brunch new git@github.com:wmdmark/brunch-express-lane.git
    $ brunch w -s
    $ server/bin/devserver

## Testing

To run your tests using [Testem](https://github.com/airportyh/testem) you will need to install [phantomjs](https://github.com/ariya/phantomjs):

    brew update && brew install phantomjs

Start testem:

    testem
