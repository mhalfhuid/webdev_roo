# DimensionsController class definition
class DimensionsController < ApplicationController
  def index
    @dimensions = Dimension.all
  end

  def show
    @dimension = Dimension.find(params[:id])
  end
end
