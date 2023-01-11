class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      params[:menu_items].each do |menu_item_id, quantity|
        OrderItem.create(order: @order, menu_item_id: menu_item_id, quantity: quantity)
      end
      redirect_to @order
    else
      render :new
    end
  end

  private

  def order_params
    params.require(:order).permit(:customer_name, :customer_email, :customer_phone, menu_items: {})
  end
end
