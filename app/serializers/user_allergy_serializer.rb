class UserAllergySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :allergy_id

  def initialize(user_allergy_obj)
    @user_allergy_obj = user_allergy_obj
  end

  def to_serialized_json
    @user_allergy_obj.to_json(
        :include => {
            :user => {
              :except => [:created_at, :updated_at]
            },
            :allergy => {
              :except => [:created_at, :updated_at]  
            }
        }
    )
  end

end
