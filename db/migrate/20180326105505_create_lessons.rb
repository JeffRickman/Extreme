class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :category
      t.string :copyright
      t.text :passage
      t.text :details
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
