class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :programevents, :decription, :description
  end
end
