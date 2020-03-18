class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :species
  has_many :sightings
end
