class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.references :take_quiz, null: false, foreign_key: true
      t.text :response

      t.timestamps
    end
  end
end
