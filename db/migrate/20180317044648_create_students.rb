class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.date :dob
      t.string :sex
      t.string :address_l1ne1
      t.string :address_line2
      t.boolean :diet_status
      t.string :diet
      t.boolean :allergy_status
      t.string :allergy
      t.string :parent_contact
      t.string :parent_phone
      t.string :parent_email
      t.string :status

      t.timestamps
    end
  end
end
