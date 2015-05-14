class QuestionsController < ApplicationController

    def show
        @question = Question.find(params[:id])
        @language = Language.find(params[:id])
        @topic = Topic.find(params[:id])
    end

end
