class Seed

  def self.begin
    seed = Seed.new
    seed.generate_restaurants
  end

  def generate_restaurants
    5.times do |i|
      restaurant = Restaurant.create!(
        name: Faker::Restaurant.name,
        origin: Faker::Restaurant.type,
        location: Faker::Address.street_address
      )
      rand(1..3).times do |i|
        review = restaurant.reviews.create!(
          name: Faker::Name.first_name,
          rating: Faker::Number.within(range: 1..5),
          content: Faker::Restaurant.review
        )
      end
      puts "Restaurant #{i}: name is #{restaurant.name} and type is '#{restaurant.origin}'."
    end
  end
end

Seed.begin
