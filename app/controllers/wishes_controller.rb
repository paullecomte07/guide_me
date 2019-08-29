class WishesController < ApplicationController

  def create
    @wish = Wish.new(guide_id: params[:guide_id], user_id: current_user)
    @wish.user = current_user
    @wish.save
  end

  def destroy
    @wish = Wish.find(params[:id])
    @wish.destroy
  end
end
