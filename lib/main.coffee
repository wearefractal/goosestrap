mongoose   = require 'mongoose'
requireDir = require 'require-dir'

module.exports = (url, modelPath) ->
  db = mongoose.createConnection url
  models = requireDir modelPath 
  db.model k, v for k,v of models
  return db