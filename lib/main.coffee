mongoose   = require 'mongoose'
async      = require 'async'
requireDir = require 'require-dir'
{join}     = require 'path'

module.exports = (config) ->
  db = mongoose.createConnection config.db.url
  db.on "error", (e) -> console.log "mongo:", e
  models = requireDir config.paths.models #join __dirname, "./models/"
  db.model k, v for k,v of models
  return db
