require 'test_helper'

class DesiplinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desipline = desiplines(:one)
  end

  test "should get index" do
    get desiplines_url
    assert_response :success
  end

  test "should get new" do
    get new_desipline_url
    assert_response :success
  end

  test "should create desipline" do
    assert_difference('Desipline.count') do
      post desiplines_url, params: { desipline: { name: @desipline.name } }
    end

    assert_redirected_to desipline_url(Desipline.last)
  end

  test "should show desipline" do
    get desipline_url(@desipline)
    assert_response :success
  end

  test "should get edit" do
    get edit_desipline_url(@desipline)
    assert_response :success
  end

  test "should update desipline" do
    patch desipline_url(@desipline), params: { desipline: { name: @desipline.name } }
    assert_redirected_to desipline_url(@desipline)
  end

  test "should destroy desipline" do
    assert_difference('Desipline.count', -1) do
      delete desipline_url(@desipline)
    end

    assert_redirected_to desiplines_url
  end
end
