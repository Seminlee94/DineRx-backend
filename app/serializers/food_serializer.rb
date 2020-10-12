class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :ingredients, :nutritions, :description, :category, :breakfast, :lunch, :dinner, :regular, :cardiac
end
