# Declares DimItemsController actions
class DimItemsController < ApplicationController

  def index
    $USERPATH_VAR = 'dim'
    @dimensions = Dimension.all
    @dimension = Dimension.find(params[:dimension_id])
    @dim_items = @dimension.dim_items
  end
end
