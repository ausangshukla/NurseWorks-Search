require "test_helper"

class QualificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qualification = qualifications(:one)
  end

  test "should get index" do
    get qualifications_url
    assert_response :success
  end

  test "should get new" do
    get new_qualification_url
    assert_response :success
  end

  test "should create qualification" do
    assert_difference('Qualification.count') do
      post qualifications_url, params: { qualification: { country: @qualification.country, course_name: @qualification.course_name, course_type: @qualification.course_type, date_of_passing: @qualification.date_of_passing, grade: @qualification.grade, institute: @qualification.institute, pass_fail: @qualification.pass_fail, specializaion: @qualification.specializaion, state: @qualification.state, user_id: @qualification.user_id } }
    end

    assert_redirected_to qualification_url(Qualification.last)
  end

  test "should show qualification" do
    get qualification_url(@qualification)
    assert_response :success
  end

  test "should get edit" do
    get edit_qualification_url(@qualification)
    assert_response :success
  end

  test "should update qualification" do
    patch qualification_url(@qualification), params: { qualification: { country: @qualification.country, course_name: @qualification.course_name, course_type: @qualification.course_type, date_of_passing: @qualification.date_of_passing, grade: @qualification.grade, institute: @qualification.institute, pass_fail: @qualification.pass_fail, specializaion: @qualification.specializaion, state: @qualification.state, user_id: @qualification.user_id } }
    assert_redirected_to qualification_url(@qualification)
  end

  test "should destroy qualification" do
    assert_difference('Qualification.count', -1) do
      delete qualification_url(@qualification)
    end

    assert_redirected_to qualifications_url
  end
end
