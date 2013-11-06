should    = require('should')
request = require('supertest')
app = require('../../app')

describe 'authentication', ->
    describe 'POST /auth/login', ->
        describe 'success', (done) ->
            it 'authenticates a user', (done) ->
                request(app)
                    .post('/auth/login')
                    .send(email: 'email', password: 'password')
                    .end (err, res) ->
                        res.text.should.include('logged in')
                        done()