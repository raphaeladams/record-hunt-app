class RecordsController < ApplicationController
  def index
    @records = Record.all
    render json: @records
  end

  def show
    @record = Record.find(params[:id])
    render json: @record
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      # handle successful save
      render json: @record
    else
      # return error
    end
  end

  def update
    @record = Record.find(params[:id])
    if @record.update(record_params)
      # handle successful update
      render json: @record
    else
      # return error
    end
  end

  def destroy
    Record.find(params[:id]).destroy
    render json: Record.all
  end

  private
  
  def record_params
    params.require(:record).permit(:title, :artist, :year, :price)
  end
end
