class FormatItemLink < ActiveRecord::Base
  belongs_to :format_item
  belongs_to :dim_format
  belongs_to :dim_item
end
