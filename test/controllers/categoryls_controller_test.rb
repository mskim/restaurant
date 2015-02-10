require 'test_helper'

class CategorylsControllerTest < ActionController::TestCase
  setup do
    @categoryl = categoryls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categoryls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categoryl" do
    assert_difference('Categoryl.count') do
      post :create, categoryl: { name: @categoryl.name }
    end

    assert_redirected_to categoryl_path(assigns(:categoryl))
  end

  test "should show categoryl" do
    get :show, id: @categoryl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categoryl
    assert_response :success
  end

  test "should update categoryl" do
    patch :update, id: @categoryl, categoryl: { name: @categoryl.name }
    assert_redirected_to categoryl_path(assigns(:categoryl))
  end

  test "should destroy categoryl" do
    assert_difference('Categoryl.count', -1) do
      delete :destroy, id: @categoryl
    end

    assert_redirected_to categoryls_path
  end
end
