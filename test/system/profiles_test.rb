require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Country of birth", with: @profile.country_of_birth
    fill_in "Country of work", with: @profile.country_of_work
    fill_in "Current address", with: @profile.current_address
    fill_in "Current location", with: @profile.current_location
    check "Differently abled" if @profile.differently_abled
    fill_in "Dob", with: @profile.dob
    fill_in "Expected salary", with: @profile.expected_salary
    fill_in "Gender", with: @profile.gender
    fill_in "Languages known", with: @profile.languages_known
    fill_in "Marital status", with: @profile.marital_status
    fill_in "Notice period in days", with: @profile.notice_period_in_days
    fill_in "Preferred work location", with: @profile.preferred_work_location
    fill_in "Premanent address", with: @profile.premanent_address
    fill_in "User", with: @profile.user_id
    fill_in "Work experience in years", with: @profile.work_experience_in_years
    fill_in "Work permit of countries", with: @profile.work_permit_of_countries
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Country of birth", with: @profile.country_of_birth
    fill_in "Country of work", with: @profile.country_of_work
    fill_in "Current address", with: @profile.current_address
    fill_in "Current location", with: @profile.current_location
    check "Differently abled" if @profile.differently_abled
    fill_in "Dob", with: @profile.dob
    fill_in "Expected salary", with: @profile.expected_salary
    fill_in "Gender", with: @profile.gender
    fill_in "Languages known", with: @profile.languages_known
    fill_in "Marital status", with: @profile.marital_status
    fill_in "Notice period in days", with: @profile.notice_period_in_days
    fill_in "Preferred work location", with: @profile.preferred_work_location
    fill_in "Premanent address", with: @profile.premanent_address
    fill_in "User", with: @profile.user_id
    fill_in "Work experience in years", with: @profile.work_experience_in_years
    fill_in "Work permit of countries", with: @profile.work_permit_of_countries
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
