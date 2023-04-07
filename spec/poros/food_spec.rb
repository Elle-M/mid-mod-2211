require "rails_helper"

describe "Food Poro" do
  it "exists" do
    food_data = {
      "gtinUpc": "492111402857",
      "description": "SWEET POTATOES",
      "brandOwner": "ARCHER FARMS",
      "ingredients": "SWEET POTATOES."
    }
    food = Food.new(food_data)

    expect(food).to be_a(Food)
    expect(food.gtin_upc).to eq(food_data[:gtinUpc])
    expect(food.description).to eq(food_data[:description])
    expect(food.brand_owner).to eq(food_data[:brandOwner])
    expect(food.ingredients).to eq(food_data[:ingredients])
  end
end