# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.create([
  {name: "Food & Drink"},
  {name: "Events"},
  {name: "Cultural"}
  ])

Tag.find_by(name: "Food & Drink").posts.create({title: "Right Proper", content: "A charming neighborhood brewpub"})

Tag.find_by(name: "Cultural").posts.create(
  {title: "The 9:30 Club", content: "One of the greatest music venues on the east coast"},
  {title: "The National Zoo", content: "Free animals for all"}
)
