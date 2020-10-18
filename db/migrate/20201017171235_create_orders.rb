class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :meal_types
      t.string :meal_schedule

      t.timestamps
    end
  end
end
