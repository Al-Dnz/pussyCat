require 'rails_helper'

RSpec.describe Cart, type: :model do

before(:each) do
  @user = build(:user)
end

      it { should belong_to(:user)}
      # Validation tests
      # ensure columns title and created_by are present before saving
      it { should validate_presence_of(:user_id).to eq(nil) }

  # it  do
  #   should have_many(:items).
  #     through(:cart_item).
  #     source(:user)
  #   end

  #
  # it "has a valid factory" do
  #   # teste toujours tes factories pour voir si elles sont valides
  #   expect(build(:user)).to be_valid
  # end
  #
  # it "should have many items" do
  #   item = build(:item)
  #   item.update()

end


##### source
     #
     # Use `source` to test usage of the `:source` option on a `:through`
     # association.
     #
     #     class Person < ActiveRecord::Base
     #       has_many :job_offers, through: :friends, source: :opportunities
     #     end
     #
     #     # RSpec
     #     RSpec.describe Person, type: :model do
     #       it do
     #         should have_many(:job_offers).
     #           through(:friends).
     #           source(:opportunities)
     #       end
     #     end
     #
     #     # Minitest (Shoulda)
     #     class PersonTest < ActiveSupport::TestCase
     #       should have_many(:job_offers).
     #         through(:friends).
     #         source(:opportunities)
     #     end
