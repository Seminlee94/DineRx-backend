class UserSerializer < ActiveModel::Serializer
  attributes :id, :password_digest, :name, :dob, :allergy, :department, :room, :diet, :hospital, :order
end
