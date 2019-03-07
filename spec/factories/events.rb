FactoryBot.define do
  factory :event do
    title { "MyString" }
    description { "MyText" }
    location { "MyString" }
    start_date { "2019-03-07 15:38:18" }
    duration { 1 }
    price { 1 }
    type { "" }
    category { "MyString" }
  end
end
