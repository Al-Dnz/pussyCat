FactoryBot.define do
  factory :user do
    id {1}
    email {Faker::Internet.email}
    password {Faker::Internet.password(8)}
  end
end
