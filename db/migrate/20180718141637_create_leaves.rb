class CreateLeaves < ActiveRecord::Migration[5.2]
  def change
      create_table :leaves do |t|
      t.date :from
      t.date :to
      t.string :session
      t.text :reason
      t.string :catagory
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
