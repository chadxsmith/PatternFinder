# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


post = Post.create([
  {language:'Ruby', topic:"Arrays",question:"this is a question for Arrays", question_description:"this is a question's description",question_answer: "this is a question's answer"},
  {language:'Ruby', topic:"Hashes",question:"this is a question for Hashes", question_description:"this is a question's description",question_answer: "this is a question's question_answer"}
  ])
