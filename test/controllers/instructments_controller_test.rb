require 'test_helper'

class InstructmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instructment = instructments(:one)
  end

  test "should get index" do
    get instructments_url
    assert_response :success
  end

  test "should get new" do
    get new_instructment_url
    assert_response :success
  end

  test "should create instructment" do
    assert_difference('Instructment.count') do
      post instructments_url, params: { instructment: {  } }
    end

    assert_redirected_to instructment_url(Instructment.last)
  end

  test "should show instructment" do
    get instructment_url(@instructment)
    assert_response :success
  end

  test "should get edit" do
    get edit_instructment_url(@instructment)
    assert_response :success
  end

  test "should update instructment" do
    patch instructment_url(@instructment), params: { instructment: {  } }
    assert_redirected_to instructment_url(@instructment)
  end

  test "should destroy instructment" do
    assert_difference('Instructment.count', -1) do
      delete instructment_url(@instructment)
    end

    assert_redirected_to instructments_url
  end
end
