FactoryBot.define do
  factory :item do
    title { "MyTitle" }
    description { "MyDescription is a text with at least 15 characters !" }
    price { 97.5 }
    image_url { "MyUrl" }
  end
end
