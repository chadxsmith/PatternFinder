class LanguagesController < ApplicationController


    def index
        @languages = Language.all
        @topics = Topic.all
        @questions = Question.all
        @answers = Answer.all
        @everything = []

        @languages.each { |language|  @everything.push(language).to_s }
        @topics.each { |topic|  @everything.push(topic).to_s }
        @questions.each { |question|  @everything.push(question).to_s }
        @answers.each { |answer|  @everything.push(answer).to_s }


        respond_to do |format|

        format.html { render :index}
        format.json { render json: @everything}

        end
    end


    def show
        @language = Language.find(params[:id])
    end

end
