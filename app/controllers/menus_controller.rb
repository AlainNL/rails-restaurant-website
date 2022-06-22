class MenusController < ApplicationController
  def create
    @menu = Menu.new(menu_params)
    @menu.save
  end

  def new
    @menu = Menu.new
  end

  def index
    @menus = Menu.all
    @items = Item.new
  end

  def update
    @menu = Menu.find(params[:id])
    @menu.update(menu_params)

    redirect_to menu_path(@menu)
  end

private

  def menu_params
    params.require(:menu).permit(:title, :price, :description)
  end
end
