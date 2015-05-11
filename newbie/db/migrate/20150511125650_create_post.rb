class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :language
      t.string :topic
      t.string :question
    end
  end
end
