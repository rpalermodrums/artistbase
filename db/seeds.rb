##artists
#Faker::Avatar.image("my-own-slug", "50x50")
img = 1

CITIES = ["New York City","Boston","Los Angeles","Philidelphia","Miami","Portland","Seattle","San Francisco","Chicago"]

STATES = ["New York", "Massachusetts", "California", "Pennsylvania", "Florida", "Oregon", "Washington", "California", "Illinois"]

Artist.destroy_all
20.times do
   Artist.create(name: Faker::Name.name, abstract: Faker::ChuckNorris.fact,
    bio: Faker::Hacker.say_something_smart, password: "flatiron",
    username: Faker::Internet.email, artist_type: "Photographer",
    img_link: Faker::Avatar.image("image#{img}", "200x200"),
    city: CITIES[img - 1], state: STATES[img - 1])
   img += 1
end

##fans
Fan.destroy_all
20.times do
  fan =Fan.create(name: Faker::Name.name, bio: Faker::ChuckNorris.fact,
    password: "flatiron", username: Faker::Internet.email,
    img_link: Faker::Avatar.image("image#{img}", "200x200"),
    city: CITIES[img - 1], state: STATES[img - 1])
    img += 1
  fan.cart=Cart.create()
  fan.save
end

##image collections
word_arr = %w[Tampflex Opela Wrapsafe Kanlam Greenlam Lotlux Cardguard Treeflex Temp Job Domainer Tampflex Redhold Solarbreeze Viva Voyatouch Matsoft Cardify Sub-Ex Lotstring]

ImageCollection.destroy_all
n = 0
20.times do
  ImageCollection.create(name: word_arr[n], artist_id: rand(1..10),
    img_link: Faker::Avatar.image("image#{img}", "200x200"))
  n += 1
  img += 1
end

##media
genre_arr = ["Horror", "Humor", "Biography/Autobiography", "Comic/Graphic", "Novel", "Western", "Science", "Fiction"]

Medium.destroy_all
n = 0
40.times do
  Medium.create(name: Faker::Name.name, genre: genre_arr[n], image_collection_id: rand(1..20),
    img_link: Faker::Avatar.image("image#{img}", "200x200"))
    img += 1
    n += 1
    n = 0 if n >= genre_arr.length
end

##@items
Item.destroy_all
100.times do
  Item.create(cart_id: rand(1..20), medium_id: rand(1..40))
end
