class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :description
      t.string :activity_type
      t.text :details

      t.timestamps
    end
  end
end
