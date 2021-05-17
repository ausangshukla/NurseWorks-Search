require "test_helper"

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_profile_url
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { country_of_birth: @profile.country_of_birth, country_of_work: @profile.country_of_work, current_address: @profile.current_address, current_location: @profile.current_location, differently_abled: @profile.differently_abled, dob: @profile.dob, expected_salary: @profile.expected_salary, gender: @profile.gender, languages_known: @profile.languages_known, marital_status: @profile.marital_status, notice_period_in_days: @profile.notice_period_in_days, preferred_work_location: @profile.preferred_work_location, premanent_address: @profile.premanent_address, user_id: @profile.user_id, work_experience_in_years: @profile.work_experience_in_years, work_permit_of_countries: @profile.work_permit_of_countries } }
    end

    assert_redirected_to profile_url(Profile.last)
  end

  test "should show profile" do
    get profile_url(@profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_profile_url(@profile)
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { country_of_birth: @profile.country_of_birth, country_of_work: @profile.country_of_work, current_address: @profile.current_address, current_location: @profile.current_location, differently_abled: @profile.differently_abled, dob: @profile.dob, expected_salary: @profile.expected_salary, gender: @profile.gender, languages_known: @profile.languages_known, marital_status: @profile.marital_status, notice_period_in_days: @profile.notice_period_in_days, preferred_work_location: @profile.preferred_work_location, premanent_address: @profile.premanent_address, user_id: @profile.user_id, work_experience_in_years: @profile.work_experience_in_years, work_permit_of_countries: @profile.work_permit_of_countries } }
    assert_redirected_to profile_url(@profile)
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile)
    end

    assert_redirected_to profiles_url
  end
end
