class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @user = current_user
    @guides = Guide.where(user: current_user)
    @orders = current_user.orders
  end
end
