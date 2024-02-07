class AddFieldToQuizzes < ActiveRecord::Migration[7.0]
  def change
    add_column :quizzes, :subject_name, :integer
    add_column :quizzes, :topic, :string
    add_column :quizzes, :number_of_questions, :integer
    add_column :quizzes, :exam_level, :string
    add_column :quizzes, :description, :string
  end
end
