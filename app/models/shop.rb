class Shop < ApplicationRecord
  has_many :records, dependent: :destroy

  before_save { prep_for_db }

  validates(:name, presence: true)
  validates(:city, presence: true)
  validates(:address, presence: true, uniqueness: { scope: :city })

  private
  
  def prep_for_db
    name.downcase!
    city.downcase!
    address.downcase!
  end
end
