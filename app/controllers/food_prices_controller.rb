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

    respond_to do |format|
      if @food_price.save
        format.html { redirect_to @food_price, notice: 'Food price was successfully created.' }
        format.json { render :show, status: :created, location: @food_price }
      else
        format.html { render :new }
        format.json { render json: @food_price.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @food_price.update(food_price_params)
        format.html { redirect_to @food_price, notice: 'Food price was successfully updated.' }
        format.json { render :show, status: :ok, location: @food_price }
      else
        format.html { render :edit }
        format.json { render json: @food_price.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @food_price.destroy
    respond_to do |format|
      format.html { redirect_to food_prices_url, notice: 'Food price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_food_price
      @food_price = FoodPrice.find(params[:id])
    end

    def food_price_params
      params.require(:food_price).permit(:description, :price, :serves, :small, :regular, :large, :party, :category_id)
    end
end
