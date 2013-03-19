require 'test_helper'

class UnitesControllerTest < ActionController::TestCase
  setup do
    @unite = unites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unite" do
    assert_difference('Unite.count') do
      post :create, unite: { activite: @unite.activite, code: @unite.code, compo_id: @unite.compo_id, id: @unite.id, nom: @unite.nom }
    end

    assert_redirected_to unite_path(assigns(:unite))
  end

  test "should show unite" do
    get :show, id: @unite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unite
    assert_response :success
  end

  test "should update unite" do
    put :update, id: @unite, unite: { activite: @unite.activite, code: @unite.code, compo_id: @unite.compo_id, id: @unite.id, nom: @unite.nom }
    assert_redirected_to unite_path(assigns(:unite))
  end

  test "should destroy unite" do
    assert_difference('Unite.count', -1) do
      delete :destroy, id: @unite
    end

    assert_redirected_to unites_path
  end
end
