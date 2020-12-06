class ShopsController < ApplicationController
  def index
    @shops = Shop.all
    render json: @shops
  end

  def show
    @shop = Shop.find(params[:id])
    render json: @shop
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      render json: @shop
    else
      render json: save_shop_error, status: :bad_request
    end
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update(shop_params)
      render json: @shop
    else
      render json: save_shop_error, status: :bad_request
    end
  end

  def destroy
    Shop.delete(params[:id])
    render json: Shop.all
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :city, :address)
  end

  def save_shop_error
    { 
      status: "400", 
      message: "Unable to save changes, city / address combination may be taken or shop details are invalid"
    }
  end
end
