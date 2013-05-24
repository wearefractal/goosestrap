goosestrap = require '../'
should     = require 'should'
config     = require './config/config'

module.exports = 

  "when goosestrap is initiated": =>
    @db = goosestrap config

  "it should connect to mongo": =>
    (typeof @db).should.equal 'object'

  "it should load all models": =>
    (typeof @db.model 'User').should.equal 'function'
    (typeof @db.model 'Movie').should.equal 'function'
