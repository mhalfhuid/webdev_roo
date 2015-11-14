# Declare FormatItem contoller actions
class FormatItemsController < ApplicationController

  def index
    $USERPATH_VAR = 'form'
    @format = Format.find(params[:format_id])
    @format_version = FormatVersion.find(params[:format_version_id])
    @format_items = @format_version.format_items
  end
end
