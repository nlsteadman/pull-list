require 'faker'

puts "🌱 Seeding spices..."

Comic.destroy_all
User.destroy_all
UserComic.destroy_all

Comic.create(name: "Batman", publisher: "DC", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://storage.googleapis.com/hipcomic/p/e7dff55f6189887e2b046a85659e6cc7-800.jpg", price: 5, rating: "Teen")
Comic.create(name: "Saga", publisher: "Image Comics", description: Faker::Lorem.sentence, genre: "fantasy-supernatural", image_url: "https://upload.wikimedia.org/wikipedia/en/7/78/Saga1coverByFionaStaples.jpg", price: 3, rating: "Mature")
Comic.create(name: "BRZRKR", publisher: "BOOM! Studios", description: Faker::Lorem.sentence, genre: "horror-suspense", image_url: "https://upload.wikimedia.org/wikipedia/en/7/7c/BRZRKR_no.1_cover.jpg", price: 4, rating: "Mature")
Comic.create(name: "Alien", publisher: "Marvel", description: Faker::Lorem.sentence, genre: "science fiction", image_url: "https://i.annihil.us/u/prod/marvel/i/mg/9/30/605cee73034fc/clean.jpg", price: 5, rating: "Parental Advisory")
Comic.create(name: "Deathstroke Inc.", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://s3.amazonaws.com/comicgeeks/comics/covers/large-4405771.jpg", price: 4, rating: "Ages 13+")
Comic.create(name: "The Swamp Thing", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "horror-suspense", image_url: "https://752617.smushcdn.com/1328696/wp-content/uploads/2021/05/The-Swamp-Thing-3-1-696x1070.jpg?lossy=1&strip=1&webp=1", price: 4, rating: "Ages 13+")
Comic.create(name: "Monstress", publisher: "Image Comics", description: Faker::Lorem.sentence, genre: "fantasy-supernatural", image_url: "https://images-na.ssl-images-amazon.com/images/I/814ETPqjPzL.jpg", price: 5, rating: "Mature")
Comic.create(name: "Star Wars: Crimson Reign", publisher: "Marvel Comics", description: Faker::Lorem.sentence, genre: "science fiction", image_url: "https://i.annihil.us/u/prod/marvel/i/mg/d/c0/626851b763526/clean.jpg", price: 5, rating: "Teen")
Comic.create(name: "We Have Demons", publisher: "Dark Horse Comics", description: Faker::Lorem.sentence, genre: "fantasy-supernatural", image_url: "https://d2lzb5v10mb0lj.cloudfront.net/covers/600/30/3009888.jpg", price: 5)
Comic.create(name: "The Scumbag", publisher: "Image Comics", description: Faker::Lorem.sentence, genre: "humor", image_url: "https://cdn.imagecomics.com/assets/i/releases/576691/the-scumbag-1_80aeeccf40.jpg", price: 4, rating: "Mature")
Comic.create(name: "We Don't Kill Spiders", publisher: "Scout Comics", description: Faker::Lorem.sentence, image_url: "https://s3.amazonaws.com/comicgeeks/comics/covers/large-2562594.jpg?1629122494", price: 5)
Comic.create(name: "Knights of the Dinner Table", publisher: "Kenzer & Company", description: Faker::Lorem.sentence, genre: "satire-parody", image_url: "https://images-na.ssl-images-amazon.com/images/I/51YTMJWHJ7L._SX310_BO1,204,203,200_.jpg", price: 5)
Comic.create(name: "Touching Evil", publisher: "Source Point Press", description: Faker::Lorem.sentence, genre: "crime", image_url: "https://www.previewsworld.com/SiteImage/MainImage/STL179110.jpg", price: 4)
Comic.create(name: "Teen Titans Academy", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://s3.amazonaws.com/comicgeeks/comics/covers/large-1097427.jpg?1647980154", price: 4, rating: "Ages 13+")
Comic.create(name: "Silver Surfer: Rebirth", publisher: "Marvel", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://i.annihil.us/u/prod/marvel/i/mg/b/60/61cf401aaf13d/clean.jpg", price: 4, rating: "Teen")
Comic.create(name: "Trial of the Amazons", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://s3.amazonaws.com/comicgeeks/comics/covers/large-4888130.jpg", price: 5, rating: "Ages 13+")
Comic.create(name: "Newburn", publisher: "Image Comics", description: Faker::Lorem.sentence, genre: "mystery", image_url: "https://cdn.imagecomics.com/assets/i/releases/675327/newburn-1_bd4c976a88.jpg", price: 4, rating: "Mature")
Comic.create(name: "Harley Quinn", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://cdn11.bigcommerce.com/s-0kvv9/images/stencil/1280x1280/products/347068/507384/nov207020__10493.1606155533.jpg?c=2", price: 4, rating: "Ages 13+")


50.times do
    User.create(
        name: Faker::Name.unique.name,
        address: Faker::Address.street_address,
        phone_number: Faker::PhoneNumber.phone_number,
        email: "email@email.com"
    )
end

50.times do
    UserComic.create(
        quantity: 1,
        user_id: rand(User.first.id..User.last.id),
        comic_id: rand(Comic.first.id..Comic.last.id)
        # user_id: users.ids.sample,
        # comic_id: comics.ids.sample
    )
end



puts "✅ Done seeding!"
