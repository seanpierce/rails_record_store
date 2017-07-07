Record.destroy_all

20.times do |i|
  record = Record.create!(
    artist: Faker::Name.name,
    title: Faker::Name.title,
    description: Faker::Hipster.sentences.join(' '),
    category: "Vinyl",
    cost: Faker::Commerce.price,
    image: "https://assets.boomkat.com/spree/products/305731/large/sutro_1.jpg"
  )
end

p "Created 20 records"
