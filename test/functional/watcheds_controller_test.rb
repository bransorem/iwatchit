require 'test_helper'

class WatchedsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:watcheds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create watched" do
    assert_difference('Watched.count') do
      post :create, :watched => { }
    end

    assert_redirected_to watched_path(assigns(:watched))
  end

  test "should show watched" do
    get :show, :id => watcheds(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => watcheds(:one).to_param
    assert_response :success
  end

  test "should update watched" do
    put :update, :id => watcheds(:one).to_param, :watched => { }
    assert_redirected_to watched_path(assigns(:watched))
  end

  test "should destroy watched" do
    assert_difference('Watched.count', -1) do
      delete :destroy, :id => watcheds(:one).to_param
    end

    assert_redirected_to watcheds_path
  end
end
