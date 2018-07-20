class CreateAssets < ActiveRecord::Migration[5.2]
  def change
      create_table :assets do |t|
      t.date :issue_date
      t.string :catagory
      t.string :sr_no
      t.string :brand
      t.string :version
      t.string :os
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
