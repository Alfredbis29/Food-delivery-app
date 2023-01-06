class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The food you were looking for could not be found."
    redirect_to foods_path
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food = current_user.foods.new(food_params)
    if @food.save
      redirect_to @food, notice: 'Food was successfully created.'
    else
      render :new
    end
end

def create
  @order = Order.new(order_params)
  @order.user = current_user
  @order.status = "pending"

  if @order.save
    redirect_to @order, notice: "Order was successfully placed."
  else
    render :new
  end
end

private

def order_params
  params.require(:order).permit(:delivery_address, item_ids: [])
end


  private

  def food_params
    params.require(:food).permit(:name, :description, :image, :price)
  end
end