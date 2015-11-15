# Declare FormatItem contoller actions
class FormatItemsController < ApplicationController

  def index
    $userpath_var = 'form'
    @format = Format.find(params[:format_id])
    @format_version = FormatVersion.find(params[:format_version_id])
    @format_items = @format_version.format_items
  end
end
