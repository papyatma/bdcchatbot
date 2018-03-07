class AddActivitesToSeance < ActiveRecord::Migration[5.1]
  def change
    add_reference :seances, :activite, foreign_key: true
  end
end
