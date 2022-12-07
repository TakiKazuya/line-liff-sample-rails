FactoryBot.define do
  factory :line_user do
    id { Faker::Lorem.unique.characters(number: 33) }
    name { Faker::Name.name }
  end
end
