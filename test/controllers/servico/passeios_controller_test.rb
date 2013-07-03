require 'test_helper'

class Servico::PasseiosControllerTest < ActionController::TestCase
  setup do
    @servico_passeio = servico_passeios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servico_passeios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servico_passeio" do
    assert_difference('Servico::Passeio.count') do
      post :create, servico_passeio: { cnpjTrans: @servico_passeio.cnpjTrans, dataInicio: @servico_passeio.dataInicio, dataRetorno: @servico_passeio.dataRetorno, descPasseio: @servico_passeio.descPasseio, destino: @servico_passeio.destino, internacional: @servico_passeio.internacional, localSaida: @servico_passeio.localSaida, nomeTrans: @servico_passeio.nomeTrans, precoTotal: @servico_passeio.precoTotal, precoTrans: @servico_passeio.precoTrans, status: @servico_passeio.status, veiculo: @servico_passeio.veiculo }
    end

    assert_redirected_to servico_passeio_path(assigns(:servico_passeio))
  end

  test "should show servico_passeio" do
    get :show, id: @servico_passeio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servico_passeio
    assert_response :success
  end

  test "should update servico_passeio" do
    patch :update, id: @servico_passeio, servico_passeio: { cnpjTrans: @servico_passeio.cnpjTrans, dataInicio: @servico_passeio.dataInicio, dataRetorno: @servico_passeio.dataRetorno, descPasseio: @servico_passeio.descPasseio, destino: @servico_passeio.destino, internacional: @servico_passeio.internacional, localSaida: @servico_passeio.localSaida, nomeTrans: @servico_passeio.nomeTrans, precoTotal: @servico_passeio.precoTotal, precoTrans: @servico_passeio.precoTrans, status: @servico_passeio.status, veiculo: @servico_passeio.veiculo }
    assert_redirected_to servico_passeio_path(assigns(:servico_passeio))
  end

  test "should destroy servico_passeio" do
    assert_difference('Servico::Passeio.count', -1) do
      delete :destroy, id: @servico_passeio
    end

    assert_redirected_to servico_passeios_path
  end
end
