class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :allergy, :department, :room, :diet, :hospital
end
