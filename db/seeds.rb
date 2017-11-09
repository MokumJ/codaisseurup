Photo.destroy_all
Profile.destroy_all
Category.destroy_all
User.destroy_all
Event.destroy_all



party = Category.create!(name: "Party")
buissiness_meeting = Category.create!(name: "Buissiness meeting")
sports = Category.create!(name: "Sports")
birthday = Category.create!(name: "Birthday")
outdoor = Category.create!(name: "Outdoor")
game = Category.create!(name: "Game")

jesse = User.create!( {email: "jesse.vanderheijden@gmail.com", password: '1234567'})
miriam = User.create!({email: "miriam@codaisseurbnb.com", password: "abcd1234"})
wouter = User.create!({email: "wouter@codaisseurbnb.com", password: "abcd1234"})
matt = User.create!({email: "matt@codaisseurbnb.com", password: "abcd1234"})

event_1 = Event.create!({
  name: "Buitenspelen", description: "Gezellig buitenspelen bij jou in de buurt!", location: "westerpark",  price: 0,  capacity: 100,
  includes_food: false,  includes_drinks: false, starts_at: Time.at(1364046539),  ends_at: Time.at(1364046539),
  active: true, user: jesse})
  event_2 = Event.create!({
  name: "Disco", description: "Disco feest, voetjes van de vloer", location: "Zaal 100",  price: 10,  capacity: 500,
  includes_food: false ,  includes_drinks: true , starts_at: Time.at(1364046539),  ends_at: Time.at(1364046539) ,
 active: true,   user: miriam  } )

event_3 = Event.create!({
  name: "Verjaardagsfeestje", description: "Verjaardag van oom piet", location: "Lutjebroek",  price: 0,  capacity: 20,
  includes_food: true ,  includes_drinks: true, starts_at: Time.at(1364046539),  ends_at: Time.at(1364046539) ,
  active: false,   user: wouter })

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510230476/buitenspelen_fnae8l.jpg", event: event_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510230742/piet_is_jarig_qocz9w.png", event: event_3)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510230749/verjaardag_tgiknd.jpg", event: event_3)
