class QuestionsController < ApplicationController

    def show
        @question = Question.find(params[:id])
        @language = Language.find(params[:language_id])
        @topic = Topic.find(params[:topic_id])
    end

end
