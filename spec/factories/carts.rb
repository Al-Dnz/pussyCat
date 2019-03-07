FactoryBot.define do
  factory :cart do

    it { should belongs_to(:user)}
    # Validation tests
    # ensure columns title and created_by are present before saving
    it { should validate_presence_of(:user_id) }
  end
end
