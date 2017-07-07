Record.destroy_all
User.destroy_all

User.create!(
  username: "seanpierce",
  email: "sumler.sean@gmail.com",
  password: "1234567",
  password_confirmation: "1234567",
  admin: true
  )

User.create!(
  username: "testuser",
  email: "test@email.com",
  password: "1234567",
  password_confirmation: "1234567"
  )

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

p "Created 2 users"
p "Created 20 records"
