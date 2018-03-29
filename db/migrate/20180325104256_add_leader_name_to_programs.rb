class AddLeaderNameToPrograms < ActiveRecord::Migration[5.1]
  def change
    add_column :programs, :leader_name, :string
  end
end
