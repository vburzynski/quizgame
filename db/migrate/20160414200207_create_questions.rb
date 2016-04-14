class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :correct_feedback
      t.string :incorrect_feedback

      t.timestamps null: false
    end
  end
end
