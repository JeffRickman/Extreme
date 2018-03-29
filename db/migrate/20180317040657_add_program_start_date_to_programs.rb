class AddProgramStartDateToPrograms < ActiveRecord::Migration[5.1]
  def change
    add_column :programs, :program_start_date, :date
  end
end
