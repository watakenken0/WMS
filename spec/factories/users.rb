FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "#{n}_#{Faker::Internet.email}" }
    password { Faker::Internet.password(min_length: 8, max_length: 10, mix_case: true, special_characters: true) }
  end
end
