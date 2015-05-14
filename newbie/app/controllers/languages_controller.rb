class LanguagesController < ApplicationController


    def index
        @languages = Language.all
        @topics = Topic.all
        @questions = Question.all
        @answers = Answer.all
        @everything = []
        @question_info = @questions.map {|q| [ q.title, language_topic_question_path(Language.first, q.topic, q)]   }
        # [q1, q2]
        # [["How do I..", "/languages/12/topics/2/question/1"], ["Should I..", "/languages/12/topics/4/question/2"]    ]

        respond_to do |format|
          format.html { render :index}
          format.json { render json: @question_info}
        end
    end


    def show
        @language = Language.find(params[:id])
    end

end
