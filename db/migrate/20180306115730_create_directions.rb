class CreateDirections < ActiveRecord::Migration[5.1]
  def change
    create_table :directions do |t|
      t.string :name
      t.string :typeOffer

      t.timestamps
    end
  end
end
