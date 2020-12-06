class Record < ApplicationRecord
  belongs_to :shop

  validates :shop_id, presence: true
  validates :title, presence: true
  validates :artist, presence: true

  MIN_YEAR = 1948 # the first vinyl record was made in 1948
  validates :year, numericality: { 
    greater_than_or_equal_to: MIN_YEAR, 
    less_than_or_equal_to: Time.now.year }

  validates :price, numericality: { 
    greater_than_or_equal_to: 0 }
end
