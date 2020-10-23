class OrderSerializer < ActiveModel::Serializer
  attributes :id, :meal_types, :meal_schedule
end
