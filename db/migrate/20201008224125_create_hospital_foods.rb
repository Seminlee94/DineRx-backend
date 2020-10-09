class CreateHospitalFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :hospital_foods do |t|
      t.integer :food_id
      t.integer :hospital_id

      t.timestamps
    end
  end
end
