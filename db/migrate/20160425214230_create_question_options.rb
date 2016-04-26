class CreateQuestionOptions < ActiveRecord::Migration
  def change
    create_table :question_options do |t|
      t.text :content
      t.boolean :correct
      t.integer :order
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :question_options, :order
  end
end
