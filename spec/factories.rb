FactoryGirl.define do
  factory :user do
    name Faker::Name.name
    email Faker::Internet.email
    rut Faker::Code.rut
    password Faker::Internet.password
  end
end
