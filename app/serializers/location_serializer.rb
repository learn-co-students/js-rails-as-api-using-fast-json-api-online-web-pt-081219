class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :latitude, :longitute
end
