class ChangeLeaderInProgram < ActiveRecord::Migration[5.1]
  def change
    remove_column :programs, :leader_name, :string
    add_column :programs, :leader_id, :integer
  end
end
