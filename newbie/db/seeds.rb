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




#CSS


#-----------------------------------------------------------------------------#

css = Language.create!(
			name:"CSS"
)
		centering_text = Topic.create!(
			name:"Centering Text",
			language_id: css["id"]
		)

		centering_text_q1 = Question.create!(
			title:"How do I center lines of text? ",
			description:"The most common and (therefore) easiest type of centering is that of lines of text in a paragraph or in a heading. CSS has the property 'text-align' for that:",
			topic_id: centering_text["id"]
		)

		centering_text_a1 = centering_text_q1.build_answer({
					code: "<form id=""frm1"" action=""form_action.asp"">
								First name: <input type=""text"" name=""fname""><br>
								Last name: <input type=""text"" name=""lname""><br><br>
								<input type=""button"" onclick=""myFunction()"" value=""Submit"">
							</form>"
		})

		centering_text_a1.save



		centering_images = Topic.create!(
			name:"Centering Images",
			language_id: css["id"]
		)

		centering_images_q1 = Question.create!(
			title:"How do I center lines of images? ",
			description:"Sometimes it is not the text that needs to be centered, but the block as a whole. Or, phrased differently: we want the left and right margin to be equal. The way to do that is to set the margins to 'auto'. This is normally used with a block of fixed width, because if the block itself is flexible, it will simply take up all the available width. Here is an example:",
			topic_id: centering_images["id"]
		)

		centering_images_a1 = centering_images_q1.build_answer({
					code: "P.blocktext {
						    margin-left: auto;
						    margin-right: auto;
						    width: 6em
							  }"
					  })



		centering_images_a1.save





#JavaScript

#-----------------------------------------------------------------------------#

javascript = Language.create!(
		name:"JavaScript"
)

		functions = Topic.create!(
		name:"Functions",
		language_id: javascript["id"]

		)

		functions_q1 = Question.create!(
		title:"How do I invoke a function?",
		description:"The code in a function is not executed when the function is defined. It is executed when the function is invoked.
		Some people use the term ""call a function"" instead of ""invoke a function"".
		It is also quite common to say ""call upon a function"", ""start a function"", or ""execute a function""",
		topic_id: functions["id"]
		)

		functionions_a1 = functions_q1.build_answer({
			code: "function myFunction(a, b) {return a * b;}
			myFunction(10, 2);// myFunction(10, 2) will return 20"
			})

		functionions_a1.save

#Ruby

#-----------------------------------------------------------------------------#

ruby = Language.create!(
		name:"Ruby"
)

		hash = Topic.create!({
		name:"Hashes",
		language_id: ruby["id"]
		})

		hash_q1 = Question.create!(
		title:"How do I create a hash?",
		description:"As with arrays, there is a variety of ways to create hashes. You can create an empty hash with the new class method:",
		topic_id: hash["id"]
		)

		hash_a1 = hash_q1.build_answer({
			code: "months = Hash.new  OR  months = Hash.new( ""month"" )"
			})

		hash_a1.save



#GIT

#-----------------------------------------------------------------------------#


git = Language.create!(
		name:"GIT"
)

		switch_and_check_branch = Topic.create!({
		name:"Switch and Checkout Branch",
		language_id: git["id"]
		})

		switch_and_check_branch_q1 = Question.create!(
		title:"How do I switch and checkout a new branch?",
		description:"To create a branch and switch to it at the same time, you can run the following:",
		topic_id: switch_and_check_branch["id"]
		)

		switch_and_check_branch_a1 = switch_and_check_branch_q1.build_answer({
			code: "$ git checkout -b iss53 Switched to a new branch ""iss53"""
		})

		switch_and_check_branch_a1.save





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
