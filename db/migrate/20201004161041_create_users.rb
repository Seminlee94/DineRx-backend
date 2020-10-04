class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :name
      t.string :dob
      t.string :allergy
      t.string :department
      t.string :room
      t.integer :diet
      t.integer :hospital
      t.integer :order

      t.timestamps
    end
  end
end
