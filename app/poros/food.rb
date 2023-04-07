class Food
  attr_reader :description,
              :brand_owner,
              :ingredients

  def initialize(food)
    @description = food[:description]
    @brand_owner = food[:brandOwner]
    @ingredients = food[:ingredients]
  end
end