# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: +332_154_154, category: "italian" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St", phone_number: +332_154_154, category: "japanese" }
lewagon = { name: "lewagon", address: "casablanca", phone_number: +332_548_184, category: "french" }

[dishoom, pizza_east, lewagon].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
