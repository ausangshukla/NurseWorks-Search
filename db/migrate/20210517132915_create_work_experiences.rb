class CreateWorkExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :work_experiences do |t|
      t.string :organization, limit: 50
      t.string :deignation, limit: 15
      t.string :country, limit: 20
      t.string :location
      t.date :start_date
      t.date :end_date
      t.float :salary_monthly
      t.float :salary_yearly
      t.string :salary_currency, limit: 10
      t.text :benefits
      t.boolean :current
      t.integer :user_id

      t.timestamps
    end
    add_index :work_experiences, :user_id
  end
end
