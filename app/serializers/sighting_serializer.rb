class SightingSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location
end



# class SightingSerializer
#   include FastJsonapi::ObjectSerializer
#   attributes :created_at, :bird, :location
# end


#browser would show
#sightings controller commented out stuff matches this
# {
#   "id": "2",
#   "type": "sighting",
#   "attributes": {
#     "created_at": "2019-05-14T16:39:37.011Z",
#     "bird": {
#       "id": 2,
#       "name": "Grackle",
#       "species": "Quiscalus Quiscula",
#       "created_at": "2019-05-14T16:39:36.917Z",
#       "updated_at": "2019-05-14T16:39:36.917Z"
#     },
#     "location": {
#       "id": 2,
#       "latitude": 30.26715,
#       "longitude": -97.74306,
#       "created_at": "2019-05-14T16:39:36.942Z",
#       "updated_at": "2019-05-14T16:39:36.942Z"
#     }
#   }
# }
# However, here, we have no control over what attributes 
# are included in the related objects, and so we get all the attributes of 
# "bird" and "location".