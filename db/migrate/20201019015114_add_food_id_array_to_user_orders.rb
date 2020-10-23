class AddFoodIdArrayToUserOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :user_orders, :food_id, :integer, array: true, default: []
  end
end
