class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image
      t.string :category
      t.text :description, :default => nil
      t.boolean :regular, :default => false
      t.boolean :cardiac, :default => false
      t.boolean :low_sodium, :default => false
      t.boolean :liquid, :default => false
      t.boolean :low_iodine, :default => false
      t.boolean :pureed, :default => false
      t.boolean :diabetic, :default => false
      t.boolean :vegetarian, :default => false
      t.boolean :breakfast, :default => false
      t.boolean :lunch, :default => false
      t.boolean :dinner, :default => false

      t.timestamps
    end
  end
end
