mongoose   = require 'mongoose'
requireDir = require 'require-dir'
glob = require 'glob'
path = require 'path'

module.exports = (url, modelPath) ->
  db = mongoose.createConnection url
  models = glob.sync modelPath
  for model in models
    name   = path.basename model, path.extname model
    schema = require model
    db.model name, schema

  return db