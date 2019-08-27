class ReviewsController < ApplicationController
  def create
    @guide = Guide.find(params[:guide_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.guide = @guide
    @review.save
    redirect_to guide_path(@guide)
  end

  private

  def review_params
    params.require(:review).permit(:stars, :content)
  end
end
