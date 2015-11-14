# Connection class declaration
class Connection < ActiveRecord::Base
  has_one :dimension
  has_one :format

  validates :key, presence: true, length: { maximum: 4 }
  validates :dsn, length: { maximum: 32 }
  validates :userid, length: { maximum: 32 }
  validates :password, length: { maximum: 32 }
  validates :range, length: { maximum: 32 }
  validates :query, length: { maximum: 1000 }
  validates :indeling_code, length: { maximum: 20 }
  validates :dimensie_code, length: { maximum: 20 }
  validates :userid_inserted, length: { maximum: 32 }
  validates :userid_updated, length: { maximum: 32 }
end
