FactoryBot.define do
  factory :wod do
    wod_type 'amrap'
    name { Faker::Dune.planet }
  end
end
