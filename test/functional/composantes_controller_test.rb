require 'test_helper'

class ComposantesControllerTest < ActionController::TestCase
  setup do
    @composante = composantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:composantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create composante" do
    assert_difference('Composante.count') do
      post :create, composante: { code: @composante.code, id: @composante.id, libelle: @composante.libelle }
    end

    assert_redirected_to composante_path(assigns(:composante))
  end

  test "should show composante" do
    get :show, id: @composante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @composante
    assert_response :success
  end

  test "should update composante" do
    put :update, id: @composante, composante: { code: @composante.code, id: @composante.id, libelle: @composante.libelle }
    assert_redirected_to composante_path(assigns(:composante))
  end

  test "should destroy composante" do
    assert_difference('Composante.count', -1) do
      delete :destroy, id: @composante
    end

    assert_redirected_to composantes_path
  end
end
