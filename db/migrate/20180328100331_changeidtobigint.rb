class Changeidtobigint < ActiveRecord::Migration[5.1]
  def change
    change_column :programs, :leader_id, :bigint
  end
end
