class Seance < ApplicationRecord
  belongs_to :place
  belongs_to :activite
  belongs_to :structure
end
