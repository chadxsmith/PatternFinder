class SearchController < ApplicationController

      def index
        @question_query = params[:question]
        @questions = Question.all
      end

      # def new
      #   @question_query = params[:question]
      # end

end
