FactoryBot.define do

  factory :qualification do
    course_name { "MyString" }
    course_type { "MyString" }
    specializaion { "MyString" }
    institute { "MyString" }
    country { "MyString" }
    state { "MyString" }
    date_of_passing { "2021-05-17" }
    pass_fail { false }
    grade { "MyString" }
  end

  factory :work_experience do
    organization { "MyString" }
    deignation { "MyString" }
    country { "MyString" }
    location { "MyString" }
    start_date { "2021-05-17" }
    end_date { "2021-05-17" }
    salary_monthly { 1.5 }
    salary_yearly { 1.5 }
    salary_currency { "MyString" }
    benefits { "" }
    current { false }
    user_id { 1 }
  end

  factory :profile do
    dob { "2021-05-17" }
    country_of_birth { "MyString" }
    country_of_work { "MyString" }
    current_location { "MyString" }
    work_experience_in_years { 1.5 }
    work_permit_of_countries { "MyString" }
    preferred_work_location { "MyString" }
    expected_salary { "MyString" }
    notice_period_in_days { 1 }
    user_id { 1 }
    gender { "MyString" }
    marital_status { "MyString" }
    current_address { "MyText" }
    premanent_address { "MyText" }
    differently_abled { false }
    languages_known { "MyString" }
  end

    factory :user do
      first_name { Faker::Name.first_name }
      last_name  { Faker::Name.last_name }
      email { Faker::Internet.email }
      phone {Faker::PhoneNumber.cell_phone}
      role {"User"}
      emergency_contact_name { Faker::Name.name  }
      emergency_contact_phone {Faker::PhoneNumber.cell_phone}
    end

    factory :support_request do
      req_type {SupportRequest::TYPES[rand(SupportRequest::TYPES.length)]}
      content { Faker::Lorem.paragraph}
      user {User.first}
    end
end