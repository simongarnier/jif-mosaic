require 'test_helper'

class JifsControllerTest < ActionController::TestCase
  setup do
    @jif = jifs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jifs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jif" do
    assert_difference('Jif.count') do
      post :create, jif: { name: @jif.name }
    end

    assert_redirected_to jif_path(assigns(:jif))
  end

  test "should show jif" do
    get :show, id: @jif
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jif
    assert_response :success
  end

  test "should update jif" do
    patch :update, id: @jif, jif: { name: @jif.name }
    assert_redirected_to jif_path(assigns(:jif))
  end

  test "should destroy jif" do
    assert_difference('Jif.count', -1) do
      delete :destroy, id: @jif
    end

    assert_redirected_to jifs_path
  end
end
