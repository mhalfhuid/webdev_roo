# Defines Format controller actions
class FormatsController < ApplicationController

  def index
    @formats = Format.all
  end

  def show
    @format = Format.find(params[:id])
    @format_versions = @format.format_versions
  end
end
