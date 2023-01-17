FactoryBot.define do
  factory :order do
    quantity { 1 }
    ref_code { "MyString" }
    total_price { 1.5 }
    status { "MyString" }
  end
end
