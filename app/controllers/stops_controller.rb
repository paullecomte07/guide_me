class StopsController < ApplicationController
  def index
    guide = Guide.find(params[:guide_id])
    @stops = Stop.where(guide: guide)
    @stopsMarker = @stops.map do |stop|
      [stop.longitude,stop.latitude
      ]
    end
    @markers = @stops.map do |stop|
      {
        lat: stop.latitude,
        lng: stop.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { stop: stop })
      }
    end
  end
end
