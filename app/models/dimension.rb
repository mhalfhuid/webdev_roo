# Dimension class declaration
class Dimension < ActiveRecord::Base
  validates :dimensie_code, presence: true, length: { maximum: 20 }
  validates :dimensie_naam, presence: true, length: { maximum: 100 }
  validates :dimensie_omschrijving, length: { maximum: 250 }
  validates :bron_naam, length: { maximum: 32 }
  validates :doeltabel_naam, length: { maximum: 32 }
  validates :userid_inserted, length: { maximum: 32 }
  validates :userid_updated, length: { maximum: 32 }
  has_many :dim_formats, dependent: :destroy
  has_many :dim_items, dependent: :destroy
end
