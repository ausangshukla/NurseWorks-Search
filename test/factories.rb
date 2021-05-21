FactoryBot.define do

  factory :qualification do
    course_name { ["BSc Nursing", "MSc Nursing", "Diploma in Home Nursing"][rand(3)] }
    course_type { "Full Time" }
    specialization { ["Ophthalmic Care", "Trauma Care", "Elder Care", "Pediatrics"][rand(4)] }
    institute { Faker::Company.name }
    country { "India" }
    state { "Kerala" }
    date_of_passing { Date.today - rand(10).years - 2.years }
    pass_fail { true }
    grade { ["Distinction", "Honours", "Pass"][rand(3)] }
  end

  factory :work_experience do
    organization { Faker::Company.name }
    deignation { "Nurse" }
    country { "India" }
    location { ["Bangalore", "Delhi", "Chennai"][rand(3)] }
    start_date { Date.today - rand(10).years - 2.years }
    end_date { start_date + rand(2).years }
    salary_monthly { (10000 + rand(10) * 1000) }
    salary_yearly { salary_monthly * 12 }
    salary_currency { "INR" }
    benefits { Faker::Company.catch_phrase }
    current { false }
  end

  factory :profile do
    dob { Date.today - 20.years - rand(10).years - rand(365).days }
    country_of_birth { ["India", "Phillipines"][rand(2)] }
    country_of_work { "India" }
    current_location { "India" }
    work_experience_in_years { 2 + rand(10) }
    work_permit_of_countries { "USA and India" }
    preferred_work_location { "USA" }
    expected_salary { (10000 + rand(10) * 1000).to_s + " USD"}
    notice_period_in_days { [30,60,90][rand(3)] }
    gender { ["Male", "Female"][rand(2)] }
    marital_status { "Single" }
    current_address { Faker::Address.full_address }
    premanent_address { Faker::Address.full_address }
    differently_abled { false }
    languages_known { "English, Hindi, Malayalam" }
    bio {Faker::Lorem.paragraphs(number: 10).join(" ")}
  end

    factory :user do
      first_name { Faker::Name.first_name }
      last_name  { Faker::Name.last_name }
      email { Faker::Internet.email }
      password {email}
      phone {Faker::PhoneNumber.cell_phone}
      role {"User"}
    end

    factory :user_doc do 
      doc_type { UserDoc::TYPES[ rand(UserDoc::TYPES.length) ]}
      description { Faker::Lorem.paragraphs(number: 3).join(" ") }
    end
    
end