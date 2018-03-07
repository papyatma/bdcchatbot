class CreateSeances < ActiveRecord::Migration[5.1]
  def change
    create_table :seances do |t|
      t.string :public
      t.integer :ageMin
      t.integer :ageMax
      t.string :niveau
      t.integer :sexe
      t.string :periode
      t.string :jour
      t.time :heureDebut
      t.time :heureFin
      t.date :dateDebut
      t.date :dateFin
      t.string :tarif

      t.timestamps
    end
  end
end
