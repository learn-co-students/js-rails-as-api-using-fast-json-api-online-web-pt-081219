class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :longitude, :latitude
  has_many :sightings
end
