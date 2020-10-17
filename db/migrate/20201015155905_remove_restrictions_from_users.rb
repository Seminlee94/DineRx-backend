class RemoveRestrictionsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :restrictions, :string
    add_column :users, :restrictions, :string, :default => ""
  end
end
