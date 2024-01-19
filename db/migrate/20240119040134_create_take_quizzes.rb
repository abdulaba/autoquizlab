class CreateTakeQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :take_quizzes do |t|
      t.references :quiz, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true
      t.integer :result

      t.timestamps
    end
  end
end
