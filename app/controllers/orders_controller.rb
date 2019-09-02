class OrdersController < ApplicationController
  def create
    guide = Guide.find(params[:guide_id])
    order = Order.create!(guide: guide, user: current_user, amount: guide.price, state: 'pending')
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = Order.find(params[:id])
    @guide = @order.guide
  end
end
