class FoodService
  def self.foods_by_ingredient(ingredient)
    response = conn.get("/fdc/v1/foods/search?query=#{ingredient}&pageSize=10")
    parse_json(response)
  end

  def self.conn
    Faraday.new(url: 'https://api.nal.usda.gov') do |faraday|
      faraday.params['api_key'] = ENV['FOOD_API_KEY']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end