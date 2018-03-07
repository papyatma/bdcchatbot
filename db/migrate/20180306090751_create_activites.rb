class CreateActivites < ActiveRecord::Migration[5.1]
  def change
    create_table :activites do |t|
      t.string :nom

      t.timestamps
    end
  end
end
