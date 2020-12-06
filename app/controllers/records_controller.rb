class RecordsController < ApplicationController
  before_action :find_shop
  before_action :find_record, only: [:show, :update, :destroy]
  
  def index
    @records = @shop.records
    render json: @records
  end

  def show
    render json: @record
  end

  def create
    @record = @shop.records.build(record_params)
    if @record.save
      render json: @record
    else
      render json: save_record_error, status: :bad_request
    end
  end

  def update
    if @record.update(record_params)
      render json: @record
    else
      render json: save_record_error, status: :bad_request
    end
  end

  def destroy
    @record.destroy
    render json: @shop.records.all
  end

  private

  def find_shop
    @shop = Shop.find(params[:shop_id])
  end

  def find_record
    @record = @shop.records.find_by(id: params[:id])
  end
  
  def record_params
    params.require(:record).permit(:title, :artist, :year, :price)
  end

  def save_record_error
    { 
      status: "400", 
      message: "Unable to save changes, record details invalid"
    }
  end
end
