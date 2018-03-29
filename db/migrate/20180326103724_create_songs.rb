class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :category
      t.string :author
      t.string :copyright
      t.text :words
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
