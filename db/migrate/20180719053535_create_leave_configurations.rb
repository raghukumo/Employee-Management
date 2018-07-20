class CreateLeaveConfigurations < ActiveRecord::Migration[5.2]
  def change
      create_table :leave_configurations do |t|
      t.decimal :sick_leaves
      t.decimal :privilege_leaves
      t.decimal :casual_leaves
      t.decimal :work_from_home

      t.timestamps
    end
  end
end
