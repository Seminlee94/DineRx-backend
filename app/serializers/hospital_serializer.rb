class HospitalSerializer < ActiveModel::Serializer
  attributes :id, :name, :health_system, :city
end
