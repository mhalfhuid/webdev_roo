# Declares FormatItemLink controller actions
class FormatItemLinksController < ApplicationController
  def index
    if $userpath_var == 'form'
      @format = Format.find(params[:format_id])
      @format_versions = @format.format_versions
      @format_version = FormatVersion.find(params[:format_version_id])
      @format_items = @format_version.format_items
      @format_item = FormatItem.find(params[:format_item_id])
      @format_item_links = @format_item.format_item_links
    else
      @dimension = Dimension.find(params[:dimension_id])
      @dim_items = @dimension.dim_items
      @dim_item = DimItem.find(params[:dim_item_id])
      @format_item_links = @dim_item.format_item_links
    end
  end
end
