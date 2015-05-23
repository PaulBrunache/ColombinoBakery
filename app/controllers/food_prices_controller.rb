class FoodPricesController < ApplicationController
  before_action :set_food_price, only: [:show, :edit, :update, :destroy]

  def index
    @food_prices = FoodPrice.all
  end


  def show
  end


  def new
    @food_price = FoodPrice.new
  end

  def edit
  end

  def create
      @food_price = FoodPrice.new(food_price_params)
      if @food_price.save
         flash[:success] ='Food Item was successfully Created.'
        redirect_to food_price_path(@food_price)
      else
        render :new 
      end
  end

  def update
      if @food_price.update(food_price_params)
        flash[:success] ='Food Item was successfully Updated.'
        redirect_to food_price_path(@food_price)
      else
        render :edit 
      end
  end

  def destroy
      @food_price.destroy
      flash[:success] ='Food Item was successfully deleted.'
      redirect_to food_price_path(@food_price)
  end

  private
    def set_food_price
      @food_price = FoodPrice.find(params[:id])
    end

    def food_price_params
      params.require(:food_price).permit(:item_name, :price, :serves, :small, :regular, :large, :party, :category_id)
    end
end
