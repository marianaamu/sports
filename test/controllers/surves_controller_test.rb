require 'test_helper'

class SurvesControllerTest < ActionController::TestCase
  setup do
    @surf = surves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surf" do
    assert_difference('Surf.count') do
      post :create, surf: { description: @surf.description, status: @surf.status }
    end

    assert_redirected_to surf_path(assigns(:surf))
  end

  test "should show surf" do
    get :show, id: @surf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surf
    assert_response :success
  end

  test "should update surf" do
    patch :update, id: @surf, surf: { description: @surf.description, status: @surf.status }
    assert_redirected_to surf_path(assigns(:surf))
  end

  test "should destroy surf" do
    assert_difference('Surf.count', -1) do
      delete :destroy, id: @surf
    end

    assert_redirected_to surves_path
  end
end
