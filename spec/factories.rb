require 'faker'

album_art = [
  "https://f4.bcbits.com/img/a3753541781_10.jpg",
  "https://f4.bcbits.com/img/a0799780288_10.jpg",
  "http://musique-plastique.com/img/pedro-front-cover.jpg",
  "https://github.com/seanpierce/rails_record_store/blob/master/public/system/records/avatars/000/000/021/original/Lips-square.jpg?raw=true"
]

FactoryGirl.define do

  factory :record do
    artist Faker::Name.name
    title Faker::Name.title
    description Faker::Hipster.sentences.join(' ')
    category "Vinyl"
    cost Faker::Commerce.price
    avatar File.join(album_art.sample)
  end

  factory :user do
    username "seanpierce"
    email "sean@test.com"
    password "1234567"
    password_confirmation "1234567"
    admin nil
  end

  factory :review do
    user_id 1
    record_id 1
    content "Dang, what a great record"
  end

end
