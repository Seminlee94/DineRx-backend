class UserOrderSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :user_id, :time, :food_id

  def initialize(user_order_obj)
    @user_order_obj = user_order_obj
  end

  def to_serialized_json
    @user_order_obj.to_json(
        :include => {
            :user => {
              :except => [:created_at, :updated_at]
            },
            :order => {
              :except => [:created_at, :updated_at]  
            }
        }
    )
  end


end
