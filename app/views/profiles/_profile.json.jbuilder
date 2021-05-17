json.extract! profile, :id, :dob, :country_of_birth, :country_of_work, :current_location, :work_experience_in_years, :work_permit_of_countries, :preferred_work_location, :expected_salary, :notice_period_in_days, :user_id, :gender, :marital_status, :current_address, :premanent_address, :differently_abled, :languages_known, :created_at, :updated_at
json.url profile_url(profile, format: :json)
