class StopsController < ApplicationController
  def index
    @guide = Guide.find(params[:guide_id])
    @stops = Stop.all
    @itinerary = Itinerary.new
  end
end

