class CreateProgramevents < ActiveRecord::Migration[5.1]
  def change
    create_table :programevents do |t|
      t.string :name
      t.string :decription
      t.date :event_date
      t.string :address_line1
      t.string :address_line2
      t.string :leader_name
      t.string :leader_phone
      t.text :details
      t.string :status
      t.references :program, foreign_key: true

      t.timestamps
    end
    add_index :programevents, :name
  end
end
