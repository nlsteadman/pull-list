require 'faker'

puts "🌱 Seeding spices..."

Comic.destroy_all
User.destroy_all
UserComic.destroy_all

Comic.create(name: "Batman", publisher: "DC", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1078/w200/1078486.jpg?-3035803633473500877", price: 5, rating: "Teen")
Comic.create(name: "Saga", publisher: "Image Comics", description: Faker::Lorem.sentence, genre: "fantasy-supernatural", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1532/w200/1532321.jpg?8748621849818629266", price: 3, rating: "Mature")
Comic.create(name: "BRZRKR", publisher: "BOOM! Studios", description: Faker::Lorem.sentence, genre: "horror-suspense", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1427/w200/1427277.jpg?3506911669402149907", price: 4, rating: "Mature")
Comic.create(name: "Alien", publisher: "Marvel", description: Faker::Lorem.sentence, genre: "science fiction", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1432/w200/1432596.jpg?7426701291494769981", price: 5, rating: "Parental Advisory")
Comic.create(name: "Deathstroke Inc.", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1471/w200/1471844.jpg?5017640561240975067", price: 4, rating: "Ages 13+")
Comic.create(name: "The Swamp Thing", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "horror-suspense", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1426/w200/1426006.jpg?-8031283372961240218", price: 4, rating: "Ages 13+")
Comic.create(name: "Monstress", publisher: "Image Comics", description: Faker::Lorem.sentence, genre: "fantasy-supernatural", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1050/w200/1050790.jpg?8768987173313198024", price: 5, rating: "Mature")
Comic.create(name: "Star Wars: Crimson Reign", publisher: "Marvel Comics", description: Faker::Lorem.sentence, genre: "science fiction", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1492/w200/1492698.jpg?-245156010266911152", price: 5, rating: "Teen")
Comic.create(name: "We Have Demons", publisher: "Dark Horse Comics", description: Faker::Lorem.sentence, genre: "fantasy-supernatural", image_url: "https://s3.amazonaws.com/comicgeeks/comics/covers/medium-6705849.jpg?1651033952", price: 5)
Comic.create(name: "The Scumbag", publisher: "Image Comics", description: Faker::Lorem.sentence, genre: "humor", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1422/w200/1422116.jpg?4834514706219298194", price: 4, rating: "Mature")
Comic.create(name: "We Don't Kill Spiders", publisher: "Scout Comics", description: Faker::Lorem.sentence, image_url: "https://files1.comics.org//img/gcd/covers_by_id/1488/w200/1488581.jpg?-6597393974646261459", price: 5)
Comic.create(name: "Knights of the Dinner Table", publisher: "Kenzer & Company", description: Faker::Lorem.sentence, genre: "satire-parody", image_url: "https://files1.comics.org//img/gcd/covers_by_id/279/w200/279674.jpg?-4110391858719315983", price: 5)
Comic.create(name: "Touching Evil", publisher: "Source Point Press", description: Faker::Lorem.sentence, genre: "crime", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1438/w200/1438539.jpg?-5616835888984700885", price: 4)
Comic.create(name: "Teen Titans Academy", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1432/w200/1432963.jpg?-3119330059527661262", price: 4, rating: "Ages 13+")
Comic.create(name: "Silver Surfer: Rebirth", publisher: "Marvel", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1506/w200/1506106.jpg?-6373845639615944225", price: 4, rating: "Teen")
Comic.create(name: "Trial of the Amazons", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1517/w200/1517994.jpg?6612229901962193877", price: 5, rating: "Ages 13+")
Comic.create(name: "Newburn", publisher: "Image Comics", description: Faker::Lorem.sentence, genre: "mystery", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1478/w200/1478887.jpg?-8960791585931310396", price: 4, rating: "Mature")
Comic.create(name: "Harley Quinn", publisher: "DC Comics", description: Faker::Lorem.sentence, genre: "superhero", image_url: "https://files1.comics.org//img/gcd/covers_by_id/1435/w200/1435435.jpg?4510712597786931836", price: 4, rating: "Ages 13+")


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
        quantity: rand(0..5)
    )
end

puts "✅ Done seeding!"
