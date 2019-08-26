class GuidesController < ApplicationController
  before_action :set_guide, only: [:show, :edit, :create, :destroy]

  def index
    @guides = Guide.all
  end

  def show
  end

  def new
    @guide = Guide.new()
  end

  def create
    @guide = Guide.new(guide_params)
    @guide.user = current_user
    if @guide.save
      redirect_to guide_path(@guide)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @guide.update(guide_params)
      redirect_to guide_path(@guide)
    else
      render :edit
    end
  end

  def destroy
    @guide.delete
    redirect_to dashboard_path
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
