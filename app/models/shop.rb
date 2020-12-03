class Shop < ApplicationRecord
  before_save { self.name = name.downcase,
    self.city = city.downcase,
    self.address = address.downcase }

  validates(:name, presence: true)
  validates(:city, presence: true)
  validates(:address, presence: true, uniqueness: { scope: :city })
end
