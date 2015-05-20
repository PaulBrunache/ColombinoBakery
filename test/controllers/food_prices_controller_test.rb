require 'test_helper'

class FoodPricesControllerTest < ActionController::TestCase
  setup do
    @food_price = food_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:food_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create food_price" do
    assert_difference('FoodPrice.count') do
      post :create, food_price: { belongs_to: @food_price.belongs_to, description: @food_price.description, large: @food_price.large, name: @food_price.name, party: @food_price.party, price: @food_price.price, regular: @food_price.regular, serves: @food_price.serves, small: @food_price.small }
    end

    assert_redirected_to food_price_path(assigns(:food_price))
  end

  test "should show food_price" do
    get :show, id: @food_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @food_price
    assert_response :success
  end

  test "should update food_price" do
    patch :update, id: @food_price, food_price: { belongs_to: @food_price.belongs_to, description: @food_price.description, large: @food_price.large, name: @food_price.name, party: @food_price.party, price: @food_price.price, regular: @food_price.regular, serves: @food_price.serves, small: @food_price.small }
    assert_redirected_to food_price_path(assigns(:food_price))
  end

  test "should destroy food_price" do
    assert_difference('FoodPrice.count', -1) do
      delete :destroy, id: @food_price
    end

    assert_redirected_to food_prices_path
  end
end
