require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @shop = shops(:joes)
    @shop.records.create!(title: "III",
      artist: "Led Zeppelin",
      year: 1970,
      price: 30)
    @record = @shop.records.first
  end

  test "should get records index" do
    get shop_records_path(@shop)
    assert_response :success
  end

  test "should show record" do
    get url_for([@shop, @record])
    assert_response :success
  end

  test "should create record" do
    post shop_records_path(@shop), params: {
      record: {
        title: @record.title,
        artist: @record.artist,
        year: @record.year,
        price: @record.price
      }
    }
    assert_response :success
  end

  test "should update record" do
    patch url_for([@shop, @record]), params: {
      record: {
        title: @record.title,
        artist: @record.artist,
        year: @record.year,
        price: @record.price
      }
    }
    assert_response :success
  end

  test "should destroy record" do
    delete url_for([@shop, @record])
    assert_response :success
    assert_equal @shop.records.first, nil
  end
end
