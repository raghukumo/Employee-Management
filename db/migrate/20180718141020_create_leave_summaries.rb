class CreateLeaveSummaries < ActiveRecord::Migration[5.2]
  def change
     create_table :leave_summaries do |t|
      t.decimal :privilege_leave
      t.decimal :sick_leave
      t.decimal :casual_leave
      t.decimal :work_from_home
      t.references :user, foreign_key: true

      t.timestamps
     end
    end
  end
