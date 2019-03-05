
require "rails_helper"

RSpec.describe Item, type: :model do

  before(:each) do
    @item = build(:items)
  end

  it "is valid because of title be present" do
    expect(@item).to eq(true)
  end

  it "should contain more than 2 characters in title" do
    expect(@item.title.length => 2).to eq(true)
  end

  it "should contain more than 15 characters in description" do
    expect(@item.description.length => 15).to eq(true)
  end

  it "should contain a price greater than 0 " do
         expect(@item.price > 0).to eq(true)
       end
end
