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

     it { should route(:get, '/item').to(action: :index) }
     it { should route(:get, '/item/1').to(action: :show, id: 1) }

end
