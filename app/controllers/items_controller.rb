class ItemsController < ApplicationController
  def create
    @item = Item.new(item_params)
    @item.menu = @menu
    @item.save
    redirect_to menu_path
  end

  def show
    @items = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item). permit(:item_id)
  end
end
