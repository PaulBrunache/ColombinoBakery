require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get catering" do
    get :catering
    assert_response :success
  end

  test "should get deli" do
    get :deli
    assert_response :success
  end

  test "should get pizza" do
    get :pizza
    assert_response :success
  end

  test "should get pastries" do
    get :pastries
    assert_response :success
  end

  test "should get subs" do
    get :subs
    assert_response :success
  end

end
