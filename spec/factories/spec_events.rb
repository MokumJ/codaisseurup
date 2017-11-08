FactoryGirl.define do
  factory :event do
    name {Faker::Name.name}
     description {Faker::Lorem.sentence(40)}
     location {Faker::Name.location}
      price     { Faker::Commerce.price }

      includes_food  true
      includes_drinks true
      starts_at  {Faker::Time.date}
      ends_at   {Faker::Time.date}

      created_at {Faker::Time.date}
      ends_at   {Faker::Time.date}
      updated_at {Faker::Time.date}
      user_id    {build(:user)}
end

end
