class Addforeignkeytoprogram < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :programs, :leaders
  end
end
