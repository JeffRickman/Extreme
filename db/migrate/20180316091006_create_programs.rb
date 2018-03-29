class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :name
      t.string :description
      t.time :start_time
      t.string :theme
      t.text :details
      t.string :status

      t.timestamps
    end
  end
end
