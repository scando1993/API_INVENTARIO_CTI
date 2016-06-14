FactoryGirl.define do
  factory :kit do
    title Faker::Commerce.product_name
    number_elements Faker::Number.between(1,100)
    code Faker::Lorem.characters(6)
    kit_type  ["desarrollo","prueba"].sample()
    state  ["nuevo","usado"].sample()
    reference Faker::Lorem.sentence
    domain Faker::Educator.university
    purpose Faker::Lorem.paragraph
    serie Faker::Lorem.characters(7)
  end
end
