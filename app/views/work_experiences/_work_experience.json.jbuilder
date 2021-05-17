json.extract! work_experience, :id, :organization, :deignation, :country, :location, :start_date, :end_date, :salary_monthly, :salary_yearly, :salary_currency, :benefits, :current, :user_id, :created_at, :updated_at
json.url work_experience_url(work_experience, format: :json)
