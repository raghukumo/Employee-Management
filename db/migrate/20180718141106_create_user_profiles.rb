class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
      create_table :user_profiles do |t|
      t.string :employee_code
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :mobile_number
      t.string :city
      t.text :address
      t.date :join_date
      t.string :designation
      t.string :gender
      t.string :maratial_status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end

