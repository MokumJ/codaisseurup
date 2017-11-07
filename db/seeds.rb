User.destroy_all

jesse = User.create!(
  email: "jesse.vanderheijden@gmail.com",
  password: '1234567'
)

Event.create!(
  name: "Buitenspelen", description: "Gezellig buitenspelen bij jou in de buurt!", location: "westerpark",  price: 0,  capacity: 100,
    includes_food: false ,  includes_drinks: false , starts_at: Time.at(1364046539),  ends_at: Time.at(1364046539) ,
      active: false,   user: jesse
)
