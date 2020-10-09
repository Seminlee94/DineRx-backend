class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :category, :breakfast, :lunch, :dinner, :regular, :cardiac
end
