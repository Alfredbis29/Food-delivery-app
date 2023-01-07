class OrdersController < ApplicationController
  def index
   @order = Order.all
  end

  def new
    @order = Order.new
    @foods = Food.all
  end

  def create
    @order = Order.new(order_params)
    @order.food = Food.find(params[:food_id])

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:status, :total)
  end
end
