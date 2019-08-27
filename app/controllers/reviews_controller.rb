class ReviewsController < ApplicationController
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
    @review.delete
    respond_to do |format|
      format.html { redirect_to guide_path(@guide) }
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  end

  private

  def review_params
    params.require(:review).permit(:stars, :content)
  end
end
