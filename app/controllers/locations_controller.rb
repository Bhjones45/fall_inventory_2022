class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @locations = Location.new
  end

  def create
    location = Location.new(location_params)
    location.save
    redirect_to locations_path
  end

  def show
    @location = Location.find(params[:id])
    @inventory_items = InventoryItem.all

  end

  private

  def location_params
    params.permit(:name, :description, :inventory_item_ids)
  end
end
