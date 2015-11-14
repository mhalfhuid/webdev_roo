class DimItem < ActiveRecord::Base
  belongs_to :dimension
  has_many :format_item_links, dependent: :destroy
end
