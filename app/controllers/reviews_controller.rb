class ReviewsController < ApplicationController
  def index
    @guide = Guide.find(params[:guide_id])
    @reviews = Review.where(guide: @guide)
    ratings = @reviews.map do |review|
      review.stars
    end
    @average = ratings.sum.to_f / @reviews.count
  end

  def new
    @guide = Guide.find(params[:guide_id])
    @review = Review.new
  end

  def create
    @guide = Guide.find(params[:guide_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.guide = @guide
    if @review.save
      respond_to do |format|
        format.html { redirect_to guide_path(@guide) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'guide/show' }
        format.js  # <-- idem
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    respond_to do |format|
      format.html { redirect_to guide_path(@guide) }
      format.js  # <-- will render `app/views/reviews/destroy.js.erb`
    end
  end

  private

  def review_params
    params.require(:review).permit(:stars, :content)
  end
end
