class FormatItem < ActiveRecord::Base
  belongs_to :format_version
  has_many :format_item_links, dependent: :destroy
end
