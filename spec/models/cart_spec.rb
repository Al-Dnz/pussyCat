require 'rails_helper'

RSpec.describe Cart, type: :model do

before(:each) do
  @user = build(:user)
end

      it { should belong_to(:user)}

      context "assosiations" do
        it do
         should have_many(:items).
         through(:cart_items).
         class_name('Cart')
        end
      end
    end
