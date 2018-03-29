class AddFinishTimeToPrograms < ActiveRecord::Migration[5.1]
  def change
    add_column :programs, :finish_time, :time
  end
end
