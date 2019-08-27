class StopsController < ApplicationController
  def index
    guide = Guide.find(params[:guide_id])
    @stops = Stop.where(guide: guide)
  end
end
