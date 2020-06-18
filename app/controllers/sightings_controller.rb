class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    options = {}
    options[:include] = [:bird, :location]
    render json: SightingSerializer.new(sighting, options).serializable_hash
  end

  def index
    sightings = Sighting.all
    options = {}
    options[:include] = [:bird, :location]
    render json: SightingSerializer.new(sightings, options).serializable_hash
  end
end