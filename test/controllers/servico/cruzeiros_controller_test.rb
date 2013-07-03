require 'test_helper'

class Servico::CruzeirosControllerTest < ActionController::TestCase
  setup do
    @servico_cruzeiro = servico_cruzeiros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servico_cruzeiros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servico_cruzeiro" do
    assert_difference('Servico::Cruzeiro.count') do
      post :create, servico_cruzeiro: { dataInicio: @servico_cruzeiro.dataInicio, dataRetorno: @servico_cruzeiro.dataRetorno, descCruzeiro: @servico_cruzeiro.descCruzeiro, descQuarto: @servico_cruzeiro.descQuarto, empresaCnpj: @servico_cruzeiro.empresaCnpj, empresaNavio: @servico_cruzeiro.empresaNavio, internacional: @servico_cruzeiro.internacional, localSaida: @servico_cruzeiro.localSaida, nomeNavio: @servico_cruzeiro.nomeNavio, nroQuartos: @servico_cruzeiro.nroQuartos, precoQuarto: @servico_cruzeiro.precoQuarto, precoTotal: @servico_cruzeiro.precoTotal, status: @servico_cruzeiro.status, trajetoria: @servico_cruzeiro.trajetoria }
    end

    assert_redirected_to servico_cruzeiro_path(assigns(:servico_cruzeiro))
  end

  test "should show servico_cruzeiro" do
    get :show, id: @servico_cruzeiro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servico_cruzeiro
    assert_response :success
  end

  test "should update servico_cruzeiro" do
    patch :update, id: @servico_cruzeiro, servico_cruzeiro: { dataInicio: @servico_cruzeiro.dataInicio, dataRetorno: @servico_cruzeiro.dataRetorno, descCruzeiro: @servico_cruzeiro.descCruzeiro, descQuarto: @servico_cruzeiro.descQuarto, empresaCnpj: @servico_cruzeiro.empresaCnpj, empresaNavio: @servico_cruzeiro.empresaNavio, internacional: @servico_cruzeiro.internacional, localSaida: @servico_cruzeiro.localSaida, nomeNavio: @servico_cruzeiro.nomeNavio, nroQuartos: @servico_cruzeiro.nroQuartos, precoQuarto: @servico_cruzeiro.precoQuarto, precoTotal: @servico_cruzeiro.precoTotal, status: @servico_cruzeiro.status, trajetoria: @servico_cruzeiro.trajetoria }
    assert_redirected_to servico_cruzeiro_path(assigns(:servico_cruzeiro))
  end

  test "should destroy servico_cruzeiro" do
    assert_difference('Servico::Cruzeiro.count', -1) do
      delete :destroy, id: @servico_cruzeiro
    end

    assert_redirected_to servico_cruzeiros_path
  end
end
