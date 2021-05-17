require "application_system_test_case"

class WorkExperiencesTest < ApplicationSystemTestCase
  setup do
    @work_experience = work_experiences(:one)
  end

  test "visiting the index" do
    visit work_experiences_url
    assert_selector "h1", text: "Work Experiences"
  end

  test "creating a Work experience" do
    visit work_experiences_url
    click_on "New Work Experience"

    fill_in "Benefits", with: @work_experience.benefits
    fill_in "Country", with: @work_experience.country
    check "Current" if @work_experience.current
    fill_in "Deignation", with: @work_experience.deignation
    fill_in "End date", with: @work_experience.end_date
    fill_in "Location", with: @work_experience.location
    fill_in "Organization", with: @work_experience.organization
    fill_in "Salary currency", with: @work_experience.salary_currency
    fill_in "Salary monthly", with: @work_experience.salary_monthly
    fill_in "Salary yearly", with: @work_experience.salary_yearly
    fill_in "Start date", with: @work_experience.start_date
    fill_in "User", with: @work_experience.user_id
    click_on "Create Work experience"

    assert_text "Work experience was successfully created"
    click_on "Back"
  end

  test "updating a Work experience" do
    visit work_experiences_url
    click_on "Edit", match: :first

    fill_in "Benefits", with: @work_experience.benefits
    fill_in "Country", with: @work_experience.country
    check "Current" if @work_experience.current
    fill_in "Deignation", with: @work_experience.deignation
    fill_in "End date", with: @work_experience.end_date
    fill_in "Location", with: @work_experience.location
    fill_in "Organization", with: @work_experience.organization
    fill_in "Salary currency", with: @work_experience.salary_currency
    fill_in "Salary monthly", with: @work_experience.salary_monthly
    fill_in "Salary yearly", with: @work_experience.salary_yearly
    fill_in "Start date", with: @work_experience.start_date
    fill_in "User", with: @work_experience.user_id
    click_on "Update Work experience"

    assert_text "Work experience was successfully updated"
    click_on "Back"
  end

  test "destroying a Work experience" do
    visit work_experiences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work experience was successfully destroyed"
  end
end
