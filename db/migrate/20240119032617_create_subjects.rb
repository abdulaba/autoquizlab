class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.references :institution, null: false, foreign_key: true
      t.references :teacher, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
