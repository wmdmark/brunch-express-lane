module.exports =
    development:
        app:
            name: 'Express Lane'
        root: require('path').normalize(__dirname + '/..')
        db: process.env.MONGOLAB_URI || process.env.MONGOHQ_URL \
                || 'mongodb://localhost/skeleton'
