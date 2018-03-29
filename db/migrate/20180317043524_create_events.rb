class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :event_date
      t.string :address_line1
      t.string :address_line2
      t.string :leader_name
      t.string :leader_phone
      t.text :details
      t.string :status

      t.timestamps
    end
  end
end
