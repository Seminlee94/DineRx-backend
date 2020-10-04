class CreateDiets < ActiveRecord::Migration[6.0]
  def change
    create_table :diets do |t|
      t.string :name
      t.integer :hospital_id

      t.timestamps
    end
  end
end
