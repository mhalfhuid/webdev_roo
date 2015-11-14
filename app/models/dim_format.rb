class DimFormat < ActiveRecord::Base
  belongs_to :dimension
  belongs_to :format_version
  has_many :format_item_link
end
