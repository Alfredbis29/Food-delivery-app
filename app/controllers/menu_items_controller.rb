class MenuItemsController < ApplicationController
  before_action :set_menu_item, only: [:show, :edit, :update, :destroy]

  def index
    @menu_items = MenuItem.all
  end

  def show
  end

  def new
    @menu_item = MenuItem.new
  end

  def edit
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)

    if @menu_item.save
      redirect_to @menu_item, notice: 'Menu item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @menu_item.update(menu_item_params)
      redirect_to @menu_item, notice: 'Menu item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @menu_item.destroy
    redirect_to menu_items_url, notice: 'Menu item was successfully destroyed.'
  end

  private
    def set_menu_item
      @menu_item = MenuItem.find(params[:id])
    end

    def menu_item_params
      params.require(:menu_item).permit(:name, :description, :price, :category_id, :image)
    end
end
