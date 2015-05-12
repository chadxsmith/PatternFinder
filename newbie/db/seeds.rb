# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# create the instances
# question = Question.create!
# answer = Answer.create!
# link them together
# question.answer = answer

Language.destroy_all

#HTML


#-----------------------------------------------------------------------------#
html = Language.create!(name:"HTML")
html_topic = html.topics.create!(name:"Hyperlinks")

html_topic_question = html_topic.questions.create!(title:"How do I....?", description: "There are
several ways to do this, but which one is best? For example....")
html_topic_question_answer = html_topic_question.build_answer({code: "This is code"}) #"build__" was used since the
# question table used "has one" as it's association for answer
html_topic_question_answer.save

html_topic_question2 = html_topic.questions.create!(title:"How do I....?", description: "There are
several ways to do this, but which one is best? For example....")
html_topic_question2_answer = html_topic_question2.build_answer({code: "This is code"}) #"build__" was used since the
# question table used "has one" as it's association for answer
html_topic_question2_answer.save



#CSS


#-----------------------------------------------------------------------------#

css = Language.create!(name:"CSS")
css_topic = css.topics.create!(name:"Declarations")

css_topic_question = css_topic.questions.create(title:"How do I.....?", description:"There are several ways to do this,
but which one is best? For example....")
css_topic_question_answer = css_topic_question.build_answer({code: "This is code"})
css_topic_question_answer.save


#JavaScript

#-----------------------------------------------------------------------------#

javascript = Language.create!(name:"JavaScript")
javascript_topic = javascript.topics.create!(name:"Functions")

javascript_topic_question = javascript_topic.questions.create(title:"How do I.....?", description:"There are several ways to do this,
but which one is best? For example....")
javascript_topic_question_answer = javascript_topic_question.build_answer({code: "This is code"})
javascript_topic_question_answer.save


#Ruby

#-----------------------------------------------------------------------------#

ruby = Language.create!(name:"Ruby")
ruby_topic = ruby.topics.create!(name:"Hashes")

ruby_topic_question = ruby_topic.questions.create(title:"How do I.....?", description:"There are several ways to do this,
but which one is best? For example....")
ruby_topic_question_answer = ruby_topic_question.build_answer({code: "This is code"})
ruby_topic_question_answer.save




#GIT

#-----------------------------------------------------------------------------#

git = Language.create!(name:"GIT")
git_topic = git.topics.create!(name:"Merge")

git_topic_question = git_topic.questions.create(title:"How do I.....?", description:"There are several ways to do this,
but which one is best? For example....")
git_topic_question_answer = git_topic_question.build_answer({code: "This is code"})
git_topic_question_answer.save







#
#
# #CSS
# #-----------------------------------------------------------------------------#
# css = Language.create(name:"CSS")
# css.topics.push(Topic.new(name:"Declaration"))
# # ruby.topics.push[0].questions
# html.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# html.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
# css = Language.create(name:"CSS")
# css.topics.push(Topic.new(name:"Class"))
# # ruby.topics.push[0].questions
# html.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# html.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
# css = Language.create(name:"CSS")
# css.topics.push(Topic.new(name:"Selectors"))
# # ruby.topics.push[0].questions
# html.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# html.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
#
#
# #JavaScript
#
# #-----------------------------------------------------------------------------#
# javascript = Language.create(name:"Javascript")
# css.topics.push(Topic.new(name:"Functions"))
# # ruby.topics.push[0].questions
# html.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# html.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
# javascript = Language.create(name:"Javascript")
# css.topics.push(Topic.new(name:"While"))
# # ruby.topics.push[0].questions
# html.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# html.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
# javascript = Language.create(name:"Javascript")
# css.topics.push(Topic.new(name:"Control Flow"))
# # ruby.topics.push[0].questions
# html.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# html.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
#
#
#
# # Ruby
#
# #-----------------------------------------------------------------------------#
#
# ruby = Language.create(name:"Ruby")
# ruby.topics.push(Topic.new(name:"Arrays"))
# # ruby.topics.push[0].questions
# ruby.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# ruby.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
#
# ruby = Language.create(name:"Ruby")
# ruby.topics.push(Topic.new(name:"Hashes"))
# # ruby.topics.push[0].questions
# ruby.topics.push[0].questions << Question.create!(title: "How do I
# .............?", description: "There are several ways to do this, but
# which one is best? For example....")
# ruby.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
#
# ruby = Language.create(name:"Ruby")
# ruby.topics.push(Topic.new(name:"Control Flow"))
# # ruby.topics.push[0].questions
# ruby.topics.push[0].questions << Question.create!(title: "How do I
# .............?", description: "There are several ways to do this, but
# which one is best? For example....")
# ruby.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
#
#
# # GIT
# #-----------------------------------------------------------------------------#
# git = Language.create(name:"GIT")
# git.topics.push(Topic.new(name:"Push"))
# # ruby.topics.push[0].questions
# ruby.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# ruby.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
# git = Language.create(name:"GIT")
# git.topics.push(Topic.new(name:"Merge"))
# # ruby.topics.push[0].questions
# ruby.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# ruby.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
# git = Language.create(name:"GIT")
# git.topics.push(Topic.new(name:"Commit"))
# # ruby.topics.push[0].questions
# ruby.topics.push[0].questions << Question.create!(title: "How do I
# .........?", description: "There are several ways to do this, but
# which one is best? For example....")
# ruby.topics.push[0].questions.push[0] << Answer.create!(code:"This is code")
#
#
#
#
#
#
#





######## BAD CODE !!!!! ##############
### RUBY
# ruby = Language.create(ruby)
# iteration = Topic.create(iteration)
# ruby.topics << iteration
# iteration.questions << Question.new(title: body:)
# iteration.questions << Question.new(title: body:)
# iteration.questions << Question.new(title: body:)
# iteration.questions << Question.new(title: body:)
# iteration.questions << Question.new(title: body:)
# iteration.questions << Question.new(title: body:)
# iteration.questions << Question.new(title: body:)




## Javascript
