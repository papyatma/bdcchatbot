class AddPlacesToSeance < ActiveRecord::Migration[5.1]
  def change
    add_reference :seances, :place, foreign_key: true
  end
end
