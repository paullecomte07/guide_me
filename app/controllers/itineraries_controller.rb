class ItinerariesController < ApplicationController

  def create
    @guide = Guide.find(params[:guide_id])
    @stop = Stop.find(params[:stop_id])
    @itinerary = Itinerary.create!()
  end
end
