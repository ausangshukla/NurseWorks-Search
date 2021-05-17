class CreateQualifications < ActiveRecord::Migration[6.1]
  def change
    create_table :qualifications do |t|
      t.string :course_name, limit: 100
      t.string :course_type, limit: 10
      t.string :specializaion, limit: 50
      t.string :institute, limit: 100
      t.string :country, limit: 50
      t.string :state, limit: 30
      t.date :date_of_passing
      t.boolean :pass_fail
      t.string :grade, limit: 20
      t.integer :user_id

      t.timestamps
    end
    add_index :qualifications, :user_id
  end
end
