
require "rails_helper"

RSpec.describe Item, type: :model do

  before(:each) do
    @user = build(:user)
    @item = build(:item)
  end

  it "is valid with valid attributes" do
    expect(@item).to be_valid
  end

  it "should contain more than 2 characters in title" do
    expect(@item.title.length > 2).to eq(true)
  end

  it "should contain more than 15 characters in description" do
    expect(@item.description.length > 15).to eq(true)
  end

  it "should contain a price greater than 0 " do
         expect(@item.price > 0).to eq(true)
       end

       context "assosiations" do
         it do
          should have_many(:carts).
          through(:cart_items)
         end
        it do
          should have_many(:orders).
          through(:item_orders)
       end
     end
end
