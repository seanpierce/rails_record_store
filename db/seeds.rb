Record.destroy_all
User.destroy_all

User.create!(
  username: "Super User!",
  email: "admin@admin.com",
  password: "admin",
  password_confirmation: "admin",
  admin: true
  )

User.create!(
  username: "Regular User",
  email: "user@user.com",
  password: "user",
  password_confirmation: "user"
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
