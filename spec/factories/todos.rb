# spec/factories/todos.rb
require 'faker'
FactoryBot.define do
  factory :todo do
    title { Faker::Movies::StarWars.quote }
    created_by { Faker::Number.number(digits: 10) }
  end
end
