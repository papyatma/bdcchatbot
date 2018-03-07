json.extract! seance, :id, :public, :ageMin, :ageMax, :niveau, :sexe, :periode, :jour, :heureDebut, :heureFin, :dateDebut, :dateFin, :tarif, :created_at, :updated_at
json.url seance_url(seance, format: :json)
