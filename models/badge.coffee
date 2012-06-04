mongoose = require 'mongoose'
Schema = mongoose.Schema
db = mongoose.createConnection 'mongodb://localhost:27017/badges'

BadgeSchema = new Schema
  name: String
  created_at: Date
  updated_at: Date
  image: String
  description: String
  criteria: String
  issuer: Schema.ObjectId

Badge = db.model("Badge", BadgeSchema)

module.exports = Badge

