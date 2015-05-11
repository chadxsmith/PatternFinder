class AddQuestionDescriptionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :question_description, :string
  end
end
