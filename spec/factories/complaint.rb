FactoryBot.define do
  factory :complaint do
    title       { Faker::Name.name }
    description { Faker::Quote.famous_last_words }
    association :company
    association :locale
  end
end
