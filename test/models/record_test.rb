require 'test_helper'

class RecordTest < ActiveSupport::TestCase
  def setup
    @shop = shops(:joes)

    @record = @shop.records.build(title: "Example Record",
      artist: "Example Artist",
      year: 2000,
      price: 30)
  end

  test "should be valid" do
    assert @record.valid?
  end

  test "title should not be blank" do
    @record.title = ""
    refute @record.valid?
  end

  test "artist should not be blank" do
    @record.artist = ""
    refute @record.valid?
  end

  test "year should be valid" do
    @record.year = 1947
    refute @record.valid?

    @record.year = 1948
    assert @record.valid?

    @record.year = Time.now.year + 1
    refute @record.valid?
  end

  test "price should be positive" do
    @record.price = -1
    refute @record.valid?
  end
end
