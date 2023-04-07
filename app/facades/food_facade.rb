class FoodFacade
  def self.search(ingredient)
    foods = FoodService.search(ingredient)
    foods[:foods].map do |food|
      Food.new(food)
    end
  end
end

