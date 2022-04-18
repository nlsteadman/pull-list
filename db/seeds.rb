require 'faker'

puts "🌱 Seeding spices..."

Comic.destroy_all
User.destroy_all
UserComic.destroy_all

50.times do
    Comic.create(
        name: Faker::DcComics.title,
        publisher: "DC",
        description: Faker::Lorem.sentence
    )
end

50.times do
    User.create(
        name: Faker::Name.name,
        address: Faker::Address.street_address,
        phone_number: Faker::PhoneNumber.phone_number,
        email: "email@email.com"
    )
end

50.times do
    UserComic.create(
        quantity: rand(0..5)
    )
end

puts "✅ Done seeding!"
