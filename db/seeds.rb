Record.destroy_all
User.destroy_all

album_art = [
  "https://assets.boomkat.com/spree/products/432760/large/azioni-dist_preview.jpg",
  "https://assets.boomkat.com/spree/products/432814/large/E031_dist_preview.jpg",
  "https://assets.boomkat.com/spree/products/431865/large/image_0.jpg",
  "https://assets.boomkat.com/spree/products/431708/large/634457478688_T33286314780054.jpg",
  "https://assets.boomkat.com/spree/products/421597/large/jonnynash-passiveaggressive.jpg",
  "https://assets.boomkat.com/spree/products/432226/product/R-10369847-1496135219-2570.png.jpg",
  "https://assets.boomkat.com/spree/products/432272/large/Screen_Shot_2017-07-05_at_14.36.28.png",
  "https://assets.boomkat.com/spree/products/432257/large/DDJccw.jpg",
  "https://assets.boomkat.com/spree/products/432398/large/MFM012-Caliban-12inch-r3-4_small.jpg",
  "https://assets.boomkat.com/spree/products/432077/large/ASDA-Tape-main.jpg",
  "https://assets.boomkat.com/spree/products/431547/large/Artwork.jpg",
  "https://assets.boomkat.com/spree/products/429748/large/5050580672505.jpg",
  "https://assets.boomkat.com/spree/products/428818/large/5055869559263_T11_Image.jpg",
  "https://assets.boomkat.com/spree/products/428237/large/Screen_Shot_2017-06-08_at_11.42.39.png",
  "https://assets.boomkat.com/spree/products/425789/large/OMSOLOW001LP_CU.jpg",
  "https://assets.boomkat.com/spree/products/431460/large/BW.jpg",
  "https://assets.boomkat.com/spree/products/317177/large/190374089432.jpg"
]

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
    avatar: File.join(album_art.sample)
  )
  rand(2...6).times do |i|
    review = Review.create!(
      content: Faker::Hipster.sentences.join(' '),
      user_id: User.all.sample.id,
      record_id: record.id
    )
  end
end

p "Created 2 users"
p "Created 20 records"
p "Created a buncha reviews"
