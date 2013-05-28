mongoose   = require 'mongoose'
async      = require 'async'
requireDir = require 'require-dir'
{join}     = require 'path'

module.exports = (url, modelPath, done) ->
  db = mongoose.createConnection url
  db.on "error", (e) -> 
  	console.log "mongo:", e
  	return done e
  models = requireDir modelPath 
  db.model k, v for k,v of models
  done null, db
