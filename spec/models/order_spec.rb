require 'rails_helper'

RSpec.describe Order, type: :model do

  before(:each) do
    @user = build(:user)
    @order = build(:order)
  end

  it { should belong_to(:user)}


    context "assosiations" do
      it do
       should have_many(:items).
       through(:item_orders)
      end


# => other way to test association
    describe "order" do
      it "should have_many orders" do
        order = Order.create(user: @user)
        expect(@user.orders.include?(order)).to eq(true)
      end
    end
  end

end
