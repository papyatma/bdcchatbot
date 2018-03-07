class CreateStructures < ActiveRecord::Migration[5.1]
  def change
    create_table :structures do |t|
      t.string :name
      t.string :address
      t.integer :zipcode
      t.integer :phone
      t.string :email
      t.string :typeStructure

      t.timestamps
    end
  end
end
