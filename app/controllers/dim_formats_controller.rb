# Describes DimFormats controller actions
class DimFormatsController < ApplicationController
  def index
    @dimension = Dimension.find(params[:dimension_id])
    @dim_formats = @dimension.dim_formats
  end
end
