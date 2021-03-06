class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :name
      t.string :category
      t.string :copyright
      t.text :equipment
      t.text :details
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
