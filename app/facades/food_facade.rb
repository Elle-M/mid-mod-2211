class FoodFacade
  def self.search(ingredient)
    foods = FoodService.foods_by_ingredient(ingredient)
    foods[:foods].map do |food|
      Food.new(food)
    end
  end
end

