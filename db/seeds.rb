puts "Renitializing Flats"

Flat.destroy_all

puts "creating Flats"

4.times do 
    flat = Flat.create!(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        description: Faker::Restaurant.description,
        price_per_night: rand(20...100),
        number_of_guest: rand(1..5)
    )
end

puts "done"
