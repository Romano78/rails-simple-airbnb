puts "Renitializing Flats"

Flat.destroy_all

puts "creating Flats"

# Flat.create!(
#   name: 'Light & Spacious Garden Flat London',
#   address: '10 Clifton Gardens London W9 1DT',
#   photo_url: 'https://source.unsplash.com/random/?loft',
#   description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 75,
#   number_of_guest: 3
# )

# Flat.create!(
#   name: 'Stylish House Close to River Thames',
#   address: '5 Queensmill Road London SW6 6JP',
#   photo_url: 'https://source.unsplash.com/random/?appartement',
#   description: 'Lovely warm comfortable and stylishly furnished house. Private bedroom and bathroom with shared living areas.',
#   price_per_night: 65,
#   number_of_guest: 2
# )

# Flat.create!(

# )

10.times do 
  Flat.create!(
    name: Faker::TvShows::SouthPark.character,
    address: Faker::Address.street_address,
    photo_url: 'https://source.unsplash.com/random/?loft',
    description: Faker::TvShows::SouthPark.quote,
    price_per_night: rand(15...500),
    number_of_guest: rand(1...5)
  )
end


puts "done"
