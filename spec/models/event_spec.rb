require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validation" do
it "is invalid without name"
it "is invalid without location"
it "is invalid with a capacity more than 50000 characters"
it "is invalid with a description longer than 500 characters"
end

  describe "association with user" do
    let(:user) { create :user }

    it "belongs to a user" do
      event = user.events.build(name: "spelen")

      expect(event.user).to eq(user)
    end

end



    describe ".order_by_price" do
      let!(:event1) { create :event, price: 1}
      let!(:event2) { create :event, price: 5}
      let!(:event3) { create :event, price: 10}

      it "returns a sorted array of events by price" do

        expect(Event.order_by_price).to eq([event1, event2, event3])

      end
    end
end
