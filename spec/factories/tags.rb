FactoryBot.define do
  factory :tag do
    name {Faker::Name.last_name}
  end
end