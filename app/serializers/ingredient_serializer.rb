class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :amount
end
