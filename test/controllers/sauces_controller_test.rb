require 'test_helper'

class SaucesControllerTest < ActionController::TestCase
  setup do
    @sauce = sauces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sauces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sauce" do
    assert_difference('Sauce.count') do
      post :create, sauce: { description: @sauce.description, glutenFree: @sauce.glutenFree, name: @sauce.name }
    end

    assert_redirected_to sauce_path(assigns(:sauce))
  end

  test "should show sauce" do
    get :show, id: @sauce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sauce
    assert_response :success
  end

  test "should update sauce" do
    patch :update, id: @sauce, sauce: { description: @sauce.description, glutenFree: @sauce.glutenFree, name: @sauce.name }
    assert_redirected_to sauce_path(assigns(:sauce))
  end

  test "should destroy sauce" do
    assert_difference('Sauce.count', -1) do
      delete :destroy, id: @sauce
    end

    assert_redirected_to sauces_path
  end
end
