require "rails_helper"

describe "Food Service" do
  it "returns a list of foods that contain the ingredient" do
    foods = FoodService.search("sweet potatoes")

    expect(foods).to be_an(Array)
    expect(foods.count).to eq(10)

    food = foods.first

    expect(food).to be_a(Food)
    expect(food.gtin_upc).to be_a(String)
    expect(food.description).to be_a(String)
    expect(food.brand_owner).to be_a(String)
    expect(food.ingredients).to be_a(String)
  end
end