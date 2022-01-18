class InventoryItemsController < ApplicationController
  def index
    @inventory_items = InventoryItem.all
  end

  def show
    @inventory_item = InventoryItem.find(params[:id])
  end

  def new
    @inventory_item = InventoryItem.new
  end

  def create
    inventory_item = InventoryItem.new(items_params)
    inventory_item.save
    redirect_to inventory_items_path
  end

  def edit
    @inventory_item = InventoryItem.find(params[:id])
  end

  def update
    item = InventoryItem.find(params[:id])
    item.update(items_params)
    item.save

    redirect_to inventory_item_path
  end

  def destroy
    item = InventoryItem.find(params[:id])
    item.destroy
    redirect_to inventory_items_path
  end

  private

  def items_params
    params.permit(:name, :description, :unit_price)
  end
end
