class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :department, :room, :diet, :hospital
end
