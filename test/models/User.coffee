{Schema} = require 'mongoose'

User = new Schema
  username:
    type: String
    required: true
    unique: true

  password:
    type: String
    required: true


module.exports = User