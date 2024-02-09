class AddColumnToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :answers, :string, array: true, default: []
  end
end
