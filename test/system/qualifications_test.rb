require "application_system_test_case"

class QualificationsTest < ApplicationSystemTestCase
  setup do
    @qualification = qualifications(:one)
  end

  test "visiting the index" do
    visit qualifications_url
    assert_selector "h1", text: "Qualifications"
  end

  test "creating a Qualification" do
    visit qualifications_url
    click_on "New Qualification"

    fill_in "Country", with: @qualification.country
    fill_in "Course name", with: @qualification.course_name
    fill_in "Course type", with: @qualification.course_type
    fill_in "Date of passing", with: @qualification.date_of_passing
    fill_in "Grade", with: @qualification.grade
    fill_in "Institute", with: @qualification.institute
    check "Pass fail" if @qualification.pass_fail
    fill_in "Specializaion", with: @qualification.specializaion
    fill_in "State", with: @qualification.state
    fill_in "User", with: @qualification.user_id
    click_on "Create Qualification"

    assert_text "Qualification was successfully created"
    click_on "Back"
  end

  test "updating a Qualification" do
    visit qualifications_url
    click_on "Edit", match: :first

    fill_in "Country", with: @qualification.country
    fill_in "Course name", with: @qualification.course_name
    fill_in "Course type", with: @qualification.course_type
    fill_in "Date of passing", with: @qualification.date_of_passing
    fill_in "Grade", with: @qualification.grade
    fill_in "Institute", with: @qualification.institute
    check "Pass fail" if @qualification.pass_fail
    fill_in "Specializaion", with: @qualification.specializaion
    fill_in "State", with: @qualification.state
    fill_in "User", with: @qualification.user_id
    click_on "Update Qualification"

    assert_text "Qualification was successfully updated"
    click_on "Back"
  end

  test "destroying a Qualification" do
    visit qualifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Qualification was successfully destroyed"
  end
end
