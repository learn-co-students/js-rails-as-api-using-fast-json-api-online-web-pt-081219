class SightingsController < ApplicationController
  
  def show
    sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting, options)
  end

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings, options)
  end

end