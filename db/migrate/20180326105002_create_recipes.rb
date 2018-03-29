class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :copyright
      t.text :ingredients
      t.text :instructions
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
