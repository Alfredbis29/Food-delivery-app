FactoryBot.define do
  factory :food do
    name { "MyString" }
    descritpion { "MyText" }
    image { "MyString" }
    price { "MyString" }
    user { nil }
  end
end
