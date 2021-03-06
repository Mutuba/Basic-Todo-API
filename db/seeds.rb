# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create our user
user = User.create(name: 'Evan', email: 'evanowner@live.com', password: 'Baraka12')
# Each Todo has 10 Items associated with it
100.times.each do |i|
  todo = Todo.create(title: "Todo #{i}", created_by: user.id)
  10.times.each do |k|
    Item.create(name: "Item #{k}", done: false, todo_id: todo.id)
  end
end