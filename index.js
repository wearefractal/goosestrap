var mongoose = require('mongoose');
var requireDir = require('require-dir');
var glob = require('glob');
var path = require('path');

module.exports = function(db, modelPath) {
  if (typeof db === 'string') {
    db = mongoose.createConnection(db);
  }
  var models = glob.sync(modelPath);
  models.forEach(function(model){
    var name = path.basename(model, path.extname(model));
    var schema = require(model);
    db.model(name, schema);
  });
  return db;
};