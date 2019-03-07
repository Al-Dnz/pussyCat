FactoryBot.define do
  factory :order do
    id {1}
    user_id {1}
    # association :owner
    # association :cart
  end
end
