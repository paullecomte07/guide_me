class ItinerariesController < ApplicationController

  def create
    @guide = Guide.find(params[:guide_id])
    @stop = Stop.find(params[:stop_id])
    @itinerary = Itinerary.new(guide: @guide, stop: @stop)
    if @itinerary.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'stops/index' }
        format.js  # <-- idem
      end
    end
  end
end
