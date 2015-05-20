json.array!(@food_prices) do |food_price|
  json.extract! food_price, :id, :name, :description, :price, :serves, :small, :regular, :large, :party, :belongs_to
  json.url food_price_url(food_price, format: :json)
end
