class CreateAnswer < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :code
      t.belongs_to :question
    end
  end
end
