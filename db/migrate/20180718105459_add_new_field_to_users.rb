class AddNewFieldToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :manager_id, :integer
    add_index :users, :manager_id
    add_reference :users, :role, index: true
  end
end
