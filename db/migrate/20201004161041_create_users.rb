class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :password_digest
      t.string :name
      t.string :dob
      t.string :department
      t.string :room
      t.string :diet
      t.text :restrictions, :default => nil
      t.integer :hospital_id


      t.timestamps
    end
  end
end
