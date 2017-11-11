FactoryGirl.define do
  factory :event do
    name          {Faker::Name.name}
    description   {Faker::Lorem.sentence(40)}

    price         {Faker::Commerce.price}

    includes_food  true
    includes_drinks true


    
    user_id    {build(:user)}
  end
end
