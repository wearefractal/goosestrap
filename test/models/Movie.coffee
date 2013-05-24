{Schema} = require 'mongoose'

Movie = new Schema
  name:
    type: String
    required: true

  date:
    type: String
    required: true

  imgUrl:
    type: String
    required: true


module.exports = Movie