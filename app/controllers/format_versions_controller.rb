# Declares FormatVersions controller actions
class FormatVersionsController < ApplicationController
  def index
    # pak het format uit Format met id = format_versions.format_id)
    @format = Format.find(params[:format_id])
    #  verzamel de format versions van dit format in @format_versions
    @format_versions = @format.format_versions
  end
end
