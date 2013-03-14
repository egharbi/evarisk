require 'test_helper'

class PersonnesControllerTest < ActionController::TestCase
  setup do
    @personne = personnes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personnes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personne" do
    assert_difference('Personne.count') do
      post :create, personne: { charge_evac: @personne.charge_evac, email: @personne.email, f_extinc: @personne.f_extinc, id: @personne.id, nom: @personne.nom, nouveau: @personne.nouveau, prenom: @personne.prenom, sst: @personne.sst, suivi_med_cons: @personne.suivi_med_cons, tel: @personne.tel }
    end

    assert_redirected_to personne_path(assigns(:personne))
  end

  test "should show personne" do
    get :show, id: @personne
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personne
    assert_response :success
  end

  test "should update personne" do
    put :update, id: @personne, personne: { charge_evac: @personne.charge_evac, email: @personne.email, f_extinc: @personne.f_extinc, id: @personne.id, nom: @personne.nom, nouveau: @personne.nouveau, prenom: @personne.prenom, sst: @personne.sst, suivi_med_cons: @personne.suivi_med_cons, tel: @personne.tel }
    assert_redirected_to personne_path(assigns(:personne))
  end

  test "should destroy personne" do
    assert_difference('Personne.count', -1) do
      delete :destroy, id: @personne
    end

    assert_redirected_to personnes_path
  end
end
