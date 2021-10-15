FactoryBot.define do
  factory :product do
    name { "MyString" }
    color { "MyString" }
    size { "MyString" }
    quantity { 1 }
    nominal { "MyString" }
    import_number { 1 }
    export_number { 1 }
  end
end
