class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    # Do not pick guides without latitude and longitude
    if params[:query].present?
      @guides = Guide.global_search(params[:query]).where.not(user: current_user)
    else
      @guides = Guide.where.not(user: current_user)
    end
  end

  def show
    @reviews = Review.where(guide_id: @guide.id)
    ratings = @reviews.map do |review|
      review.stars
    end
    @average = ((ratings.sum.to_f) / @reviews.count).round(1)
  end

  def new
    @guide = Guide.new()
  end

  def create
    @guide = Guide.new(guide_params)
    @guide.user = current_user
    if @guide.save
      redirect_to guide_stops_path(@guide)
    else
      render :new
    end
  end

  def edit
    @tag = Tag.all
  end

  def update
    if @guide.update(guide_params)
      redirect_to guide_path(@guide)
    else
      render :edit
    end
  end

  def destroy
    @guide.destroy
    redirect_to dashboard_path
  end

  def path
    guide = Guide.find(params[:guide_id])

    @stops = guide.stops
    @stopsMarker = @stops.map do |stop|
      [stop.longitude, stop.latitude
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

  private
  def guide_params
    params.require(:guide).permit(:title, :duration, :overview, :location,
      :distance, :category)
  end

  def set_guide
    @guide = Guide.find(params[:id])
  end
end
