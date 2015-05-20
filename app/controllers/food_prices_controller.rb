class FoodPricesController < ApplicationController
  before_action :set_food_price, only: [:show, :edit, :update, :destroy]

  # GET /food_prices
  # GET /food_prices.json
  def index
    @food_prices = FoodPrice.all
  end

  # GET /food_prices/1
  # GET /food_prices/1.json
  def show
  end

  # GET /food_prices/new
  def new
    @food_price = FoodPrice.new
  end

  # GET /food_prices/1/edit
  def edit
  end

  # POST /food_prices
  # POST /food_prices.json
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

  # PATCH/PUT /food_prices/1
  # PATCH/PUT /food_prices/1.json
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

  # DELETE /food_prices/1
  # DELETE /food_prices/1.json
  def destroy
    @food_price.destroy
    respond_to do |format|
      format.html { redirect_to food_prices_url, notice: 'Food price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_price
      @food_price = FoodPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_price_params
      params.require(:food_price).permit(:name, :description, :price, :serves, :small, :regular, :large, :party, :belongs_to)
    end
end
