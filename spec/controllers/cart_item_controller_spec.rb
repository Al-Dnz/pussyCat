require 'rails_helper'

RSpec.describe ItemController, type: :controller do

  describe "#index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

   it "returns a 200 response" do
     get :index
     expect(response).to have_http_status "200"
   end

end
