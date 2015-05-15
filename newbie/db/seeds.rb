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

html = Language.create!(
		name:"HTML"
)

		hyperlinks = Topic.create!(
				name: "Hyperlinks",
				language_id: html["id"]
		)


		q1 = Question.create!(
				 title:"How do you make a hyperlink?",
				 description:"HTML links are hyperlinks.A hyperlink is a text or an
				 image you can click on, and jump to another document.",
				 topic_id: hyperlinks["id"]
		)

		a1 = q1.build_answer({
				 code: "<a href=""url"">link text</a>"
		})

		a1.save



#-----------------------------------------------------------------------------#


		forms = Topic.create!(
				name: "Forms",
				language_id: html["id"]
		)


		forms_q1 = Question.create!(
				 title:"How do I create a form with a submit button",
				 description:"The form-handler is typically a server page with a script for processing input data.
         The form-handler is specified in the form's action attribute:",
				 topic_id: forms["id"]
				)

		forms_a1 = forms_q1.build_answer({
					code: "<form id=""frm1"" action=""form_action.asp"">
							  First name: <input type=""text"" name=""fname""><br>
							  Last name: <input type=""text"" name=""lname""><br><br>
							  <input type=""button"" onclick=""myFunction()"" value=""Submit"">
							</form>"
		})

		forms_a1.save





# html = Language.create!(name:"HTML")
# html_topic = html.topics.create!(name:"Hyperlinks")
#
# html_topic_question = html_topic.questions.create!(title:"Can do I....?", description: "Lorem ipsum dolor sit amet, consectetur
# 	adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
# 		exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
# 		velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
# 		 deserunt mollit anim id est laborum")
# html_topic_question_answer = html_topic_question.build_answer({code: "This is code"}) #"build__" was used since the
# # question table used "has one" as it's association for answer
# html_topic_question_answer.save
#
# html_topic_question2 = html_topic.questions.create!(title:"Should do I....?", description: "Lorem ipsum dolor sit amet, consectetur
# 	adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
# 		exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
# 		velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
# 		 deserunt mollit anim id est laborum")
# html_topic_question2_answer = html_topic_question2.build_answer({code: "This is code"}) #"build__" was used since the
# # question table used "has one" as it's association for answer
# html_topic_question2_answer.save



#CSS


#-----------------------------------------------------------------------------#

css = Language.create!(name:"CSS")
css_topic = css.topics.create!(name:"Centering Text")

css_topic_question = css_topic.questions.create(title:"How do I center lines of text? ", description:"The most common and (therefore) easiest type of centering is that of lines of text in a paragraph or in a heading. CSS has the property 'text-align' for that:")
css_topic_question_answer = css_topic_question.build_answer({code: "P { text-align: center }
H2 { text-align: center }"})


css_topic_question_answer.save


#JavaScript

#-----------------------------------------------------------------------------#

javascript = Language.create!(name:"JavaScript")
javascript_topic = javascript.topics.create!(name:"Functions")

javascript_topic_question = javascript_topic.questions.create(title:"Did do I.....?", description:"Lorem ipsum dolor sit amet, consectetur
	adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
		exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
		velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
		 deserunt mollit anim id est laborum")
javascript_topic_question_answer = javascript_topic_question.build_answer({code: "This is code"})
javascript_topic_question_answer.save


#Ruby

#-----------------------------------------------------------------------------#

ruby = Language.create!(name:"Ruby")
ruby_topic = ruby.topics.create!(name:"Hashes")

ruby_topic_question = ruby_topic.questions.create(title:"Do you.....?", description:"Lorem ipsum dolor sit amet, consectetur
	adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
		exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
		velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
		 deserunt mollit anim id est laborum")
ruby_topic_question_answer = ruby_topic_question.build_answer({code: "This is code"})
ruby_topic_question_answer.save




#GIT

#-----------------------------------------------------------------------------#

git = Language.create!(name:"GIT")
git_topic = git.topics.create!(name:"Merge")

git_topic_question = git_topic.questions.create(title:"Something else.....?", description:"Lorem ipsum dolor sit amet, consectetur
	adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
		exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
		velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
		 deserunt mollit anim id est laborum")
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
