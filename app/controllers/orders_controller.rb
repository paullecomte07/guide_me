class OrdersController < ApplicationController
  def create
    teddy = Guide.find(params[:guide_id])
    order = Order.create!(:guide, :user, amount: guide.price, state: 'pending', user: current_user)

  end

end
