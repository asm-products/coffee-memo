FactoryGirl.define do
  factory :memo do
    user
    coffee_shop { Faker::Company.name }
    kind_of_coffee { Faker::Lorem.word }
    origin { Faker::Address.country }
    taste { Faker::Lorem.word }
    aroma { Faker::Lorem.word }
    mood { Faker::Lorem.word }
    barrista { Faker::Lorem.word }
  end
end
