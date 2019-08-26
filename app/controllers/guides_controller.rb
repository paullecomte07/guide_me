class GuidesController < ApplicationController
  def index
    @guides = Guide.all
  end
end
