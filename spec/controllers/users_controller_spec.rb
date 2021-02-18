require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "POST register" do
    it "register a user" do
      user_count = User.count
      
      post "register", params: {
          "user"=> {
            "name"=> "Charl Smit", 
            "email"=> "#{SecureRandom.uuid}"
          }
        }

      assert User.count == user_count + 1
    end
  end
end
