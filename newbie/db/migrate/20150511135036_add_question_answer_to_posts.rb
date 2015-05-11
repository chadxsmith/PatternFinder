class AddQuestionAnswerToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :question_answer, :string
  end
end
