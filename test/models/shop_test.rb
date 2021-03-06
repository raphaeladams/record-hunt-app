require 'test_helper'

class ShopTest < ActiveSupport::TestCase
  def setup
    @shop = Shop.new(name: "Example Shop",
      city: "New York",
      address: "123 Main St")
  end

  test "should be valid" do
    assert @shop.valid?
  end

  test "name should not be blank" do
    @shop.name = ""
    refute @shop.valid?
  end

  test "city should not be blank" do
    @shop.city = ""
    refute @shop.valid?
  end

  test "address should not be blank" do
    @shop.address = ""
    refute @shop.valid?
  end

  test "city and address combination should be unique" do
    @shop.save
    shop_in_same_place = @shop.dup
    shop_in_same_place.name = "Shop in Same Place"
    refute shop_in_same_place.valid?
  end

  test "destroying shop destroys its records" do
    @shop.save
    @shop.records.create!(title: "1", artist: "The Beatles", year: 2000, price: 30)
    assert_difference 'Record.count', -1 do
      @shop.destroy
    end
  end
end
