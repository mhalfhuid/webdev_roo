class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def adjustlink
    if $userpath_var == 'dim'
      return dimension_dim_items_path(@dimension)
    else
      return format_format_version_format_items_path(@format, @format_version)
    end
  end
  helper_method :adjustlink

  protect_from_forgery with: :exception
end
