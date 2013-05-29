goosestrap = require '../'
should     = require 'should'
config     = require './config/config'

module.exports = 

  "it should connect": =>
    @db = goosestrap config.db.url, config.paths.models

  "db should be an object": =>
    (typeof @db).should.equal 'object'

  "it should load all models": =>
    (typeof @db.model 'User').should.equal 'function'
    (typeof @db.model 'Movie').should.equal 'function'
