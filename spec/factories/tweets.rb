FactoryBot.define do
  factory :tweet do
    text {Faker::Lorem.sentence}
    image {File.open("#{Rails.root}/public/images/test1_image.jpg")}
    tweetname {Faker::Beer.name}
    alc {Faker::Beer.alcohol}
    url {Faker::Alphanumeric.alpha(number: 10)}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end
end