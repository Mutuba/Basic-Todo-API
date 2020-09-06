# spec/factories/todos.rb
require 'faker'
FactoryBot.define do
    factory :todo do
      title { Faker::Movies::StarWars.quote }
      created_by { Faker::Number.number(10) }
    end
  end