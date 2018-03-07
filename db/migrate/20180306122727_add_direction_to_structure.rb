class AddDirectionToStructure < ActiveRecord::Migration[5.1]
  def change
    add_reference :structures, :direction, foreign_key: true
  end
end
