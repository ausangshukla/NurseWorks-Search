class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.date :dob
      t.string :country_of_birth, limit: 50
      t.string :country_of_work, limit: 50
      t.string :current_location, limit: 50
      t.float :work_experience_in_years
      t.string :work_permit_of_countries
      t.string :preferred_work_location, limit: 50
      t.string :expected_salary, limit: 10
      t.integer :notice_period_in_days
      t.integer :user_id
      t.string :gender, limit: 10
      t.string :marital_status, limit: 10
      t.text :current_address
      t.text :premanent_address
      t.boolean :differently_abled
      t.string :languages_known

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
