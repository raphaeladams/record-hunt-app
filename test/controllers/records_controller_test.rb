require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @record = records(:animals)
  end

  test "should get records index" do
    get records_path
    assert_response :success
  end

  test "should show record" do
    get record_path(@record)
    assert_response :success
  end

  test "should create record" do
    post records_path, params: { record: { 
      title: @record.title,
      artist: @record.artist,
      year: @record.year,
      price: @record.price } }
    assert_response :success
  end

  test "should update record" do
    patch record_path(@record), params: { record: { 
      title: @record.title,
      artist: @record.artist,
      year: @record.year,
      price: @record.price } }
    assert_response :success
  end

  test "should destroy record" do
    delete record_path(@record)
    assert_response :success
    
    assert_raises(ActiveRecord::RecordNotFound) do
      get record_path(@record)
    end
  end

end
