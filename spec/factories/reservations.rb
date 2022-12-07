FactoryBot.define do
  factory :reservation do
    reserved_at { "2022-12-06 05:49:41" }
    association line_user
  end
end
