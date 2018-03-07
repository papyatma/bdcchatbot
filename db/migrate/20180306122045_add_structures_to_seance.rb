class AddStructuresToSeance < ActiveRecord::Migration[5.1]
  def change
    add_reference :seances, :structure, foreign_key: true
  end
end
