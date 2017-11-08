require 'rails_helper'

describe "Viewing an individual event" do
  let(:event) { create :event }

  it "shows the events details" do
  visit event_url(event)

expect(page).to have_text(event.name)
 expect(page).to have_text(event.description)
 expect(page).to have_text(event.price_)
 expect(page).to have_text(event.includes_food)
 expect(page).to have_text(event.includes_drink)
 expect(page).to have_text(event.description)
 expect(page).to have_text(event.starts_at)
 expect(page).to have_text(event.ends_at)
 expect(page).to have_text(event.created_at)

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
