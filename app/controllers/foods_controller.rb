class FoodsController < ApplicationController
  def index

  end
  def new
    @food = Food.new(food_params)
  end
def create
  @food = Food.create(food_params)
  if food.save
    redirect_to foods_path, notice: "Food create successfully"
  else
    flash["alert"] = "Food not created"
end
end

  private

  def food_params
    params.permit(:name,:description, :image,:price)
  end
end