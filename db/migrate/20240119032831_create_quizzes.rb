class CreateQuizzes < ActiveRecord::Migration[7.0]
  def change
    create_table :quizzes do |t|
      t.references :teacher, null: false, foreign_key: true
      t.text :title

      t.timestamps
    end
  end
end
