mongoose   = require 'mongoose'
async      = require 'async'
requireDir = require 'require-dir'
{join}     = require 'path'

module.exports = (url, modelPath) ->
  db = mongoose.createConnection url
  models = requireDir modelPath 
  db.model k, v for k,v of models
  return db
