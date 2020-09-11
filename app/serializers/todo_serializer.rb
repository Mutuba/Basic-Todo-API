# app/serializers/todo_serializer.rb
class TodoSerializer < ActiveModel::Serializer
  # attributes to be serialized
  attributes :id, :title, :created_by, :created_at, :updated_at, :items
  # model association
  # has_many :items
end
