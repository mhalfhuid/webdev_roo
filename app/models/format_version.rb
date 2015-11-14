class FormatVersion < ActiveRecord::Base
  validates :format_id, presence: true
  validates :indeling_code, presence: true, length: { maximum: 20 }
  validates :versie_nummer, presence: true, length: { maximum: 2 }
  validates :versie_naam, length: { maximum: 100 }
  validates :userid_inserted, length: { maximum: 32 }
  validates :userid_updated, length: { maximum: 32 }

  belongs_to :format
  has_many :format_items, dependent: :destroy
  has_many :dim_formats, dependent: :destroy
end
