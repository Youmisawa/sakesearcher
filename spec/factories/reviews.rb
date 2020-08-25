FactoryBot.define do
  factory :review do
    comment {Faker::Lorem.sentence}
    user
    tweet
  end
end