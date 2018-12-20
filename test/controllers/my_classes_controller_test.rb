require 'test_helper'

class MyClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_class = my_classes(:one)
  end

  test "should get index" do
    get my_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_my_class_url
    assert_response :success
  end

  test "should create my_class" do
    assert_difference('MyClass.count') do
      post my_classes_url, params: { my_class: { title: @my_class.title } }
    end

    assert_redirected_to my_class_url(MyClass.last)
  end

  test "should show my_class" do
    get my_class_url(@my_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_class_url(@my_class)
    assert_response :success
  end

  test "should update my_class" do
    patch my_class_url(@my_class), params: { my_class: { title: @my_class.title } }
    assert_redirected_to my_class_url(@my_class)
  end

  test "should destroy my_class" do
    assert_difference('MyClass.count', -1) do
      delete my_class_url(@my_class)
    end

    assert_redirected_to my_classes_url
  end
end
