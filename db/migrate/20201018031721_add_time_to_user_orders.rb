class AddTimeToUserOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :user_orders, :time, :string
  end
end
