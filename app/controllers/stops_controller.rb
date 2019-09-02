class StopsController < ApplicationController

  def index
    @guide = Guide.find(params[:guide_id])
    @stops = Stop.where()
    @itinerary = Itinerary.new
  end

  def new
    @stop = Stop.new()
  end

  def create

  end

end
