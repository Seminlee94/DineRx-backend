class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :health_system
      t.string :city

      t.timestamps
    end
  end
end