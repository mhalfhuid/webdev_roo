# Format class declaration
class Format < ActiveRecord::Base
  validates :indeling_code, presence: true, length: { maximum: 20 }
  validates :indeling_naam, presence: true, length: { maximum: 100 }
  validates :indeling_omschrijving, length: { maximum: 250 }
  validates :bron_naam, length: { maximum: 32 }
  validates :userid_inserted, length: { maximum: 32 }
  validates :userid_updated, length: { maximum: 32 }

  has_one :connection
  # Format is the parent of FormatVersion and child records are
  # automatically destroyed when parent is destroyed
  has_many :format_versions, dependent: :destroy
end
