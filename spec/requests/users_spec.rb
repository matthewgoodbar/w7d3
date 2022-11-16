require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    describe "POST /users (#create)" do
      it "fails with invalid params" do
        #request
        post users_url, params: {
          user: {
            username: "",
            password: ""
          }
        }
        expect(response).not_to be_successful
      end
    end
  end
end
