require 'rails_helper'

RSpec.describe User, type: :model do

  describe "get_name" do
    it "should return user name" do
      user = User.create(name: "Charl", email: "#{SecureRandom.uuid}")
      expect(user.get_name).to eq("Charl")
    end
  end
end
