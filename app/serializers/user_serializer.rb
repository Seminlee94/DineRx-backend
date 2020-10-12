class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :dob, :department, :room, :diet, :hospital, :foods

  # def initialize(user)
  #   @user = user
  # end

  # def to_serialized_json
  #   @user.to_json(
  #       :include => {
  #           :user_foods => {
  #             :except => [:created_at, :updated_at]
  #           },
  #           :user_allergies => {
  #             :except => [:created_at, :updated_at]  
  #           }
  #       }
  #   )
  # end

end
