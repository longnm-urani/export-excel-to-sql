class CreateQuizQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :quiz_questions do |t|
      t.string :quiz_scope_name
      t.text :question_text

      t.timestamps
    end
  end
end
