FactoryBot.define do
  factory :order do
    name { "MyString" }
    descritpion { "MyText" }
    image { "MyString" }
    price { "MyString" }
    user { nil }
  end
end
