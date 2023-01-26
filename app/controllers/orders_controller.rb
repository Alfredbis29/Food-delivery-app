class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_order, only: [:show, :update, :destroy]

  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    render json: @order
  end

  def new
    @order = Order.new
  end

  def create
    food = Food.find(params[:food_id])
    @order = current_user.orders.build(order_params)
    if @order.save
      redirect_to confirmation_path
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:quantity)
  end
end