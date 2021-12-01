FactoryBot.define do
  factory :locale do
    city        { Faker::Address.city }
    state       { Faker::Address.state }
    address     { Faker::Address.street_name }
    country     { Faker::Address.country }
    postcode    { Faker::Address.postcode }
    coordinates { "[#{Faker::Address.latitude}, #{Faker::Address.longitude}]" }
    association :company
  end
end
