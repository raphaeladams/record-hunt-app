require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @shop = shops(:joes)
  end

  test "should get shops index" do
    get shops_path
    assert_response :success
  end

  test "should show shop" do
    get shop_path(@shop)
    assert_response :success
  end

  test "should create shop" do
    new_shop_name = "New Shop Name"
    new_shop_city = "New Shop City"
    new_shop_address = "New Shop Address"

    post shops_path, params: {
      shop: {
        name: new_shop_name,
        city: new_shop_city,
        address: new_shop_address
      }
    }
    assert_response :created
  end

  test "should update shop" do
    patch shop_path(@shop), params: {
      shop: {
        name: @shop.name,
        city: @shop.city,
        address: @shop.address
      }
    }
    assert_response :success
  end

  test "should destroy shop" do
    delete shop_path(@shop)
    assert_response :success
    
    assert_raises(ActiveRecord::RecordNotFound) do
      get shop_path(@shop)
    end
  end
end
