require 'rails_helper'

RSpec.describe Event, type: :model do

  describe "association with user" do
    let(:user) { create :user }

    it "belongs to a user" do
      event = user.events.build(name: "spelen")

      expect(event.user).to eq(user)
    end

end



describe "association with registration" do
  let(:guest_user) { create :user, email: "guest@user.com" }
  let(:host_user) { create :user, email: "host@user.com" }

  let!(:event) { create :event, user: host_user }
  let!(:registration) { create :registration, event: event, user: guest_user }

  it "has guests" do
    expect(event.guest_user).to include(guest_user)

      end
    end
end
