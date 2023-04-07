class Food
  attr_reader :description,
              :brand_owner,
              :ingredients,
              :gtin_upc

  def initialize(food)
    @gtin_upc = food[:gtinUpc]
    @description = food[:description]
    @brand_owner = food[:brandOwner]
    @ingredients = food[:ingredients]
  end
end