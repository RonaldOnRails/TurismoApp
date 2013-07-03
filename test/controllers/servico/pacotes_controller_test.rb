require 'test_helper'

class Servico::PacotesControllerTest < ActionController::TestCase
  setup do
    @servico_pacote = servico_pacotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servico_pacotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servico_pacote" do
    assert_difference('Servico::Pacote.count') do
      post :create, servico_pacote: { cnpjHotel: @servico_pacote.cnpjHotel, cnpjTrans: @servico_pacote.cnpjTrans, dataInicio: @servico_pacote.dataInicio, dataRetorno: @servico_pacote.dataRetorno, descHotel: @servico_pacote.descHotel, descPacote: @servico_pacote.descPacote, descQuarto: @servico_pacote.descQuarto, destino: @servico_pacote.destino, localSaida: @servico_pacote.localSaida, nomeHotel: @servico_pacote.nomeHotel, nomeTrans: @servico_pacote.nomeTrans, precoHotel: @servico_pacote.precoHotel, precoPacote: @servico_pacote.precoPacote, precoTrans: @servico_pacote.precoTrans, status: @servico_pacote.status, veiculo: @servico_pacote.veiculo }
    end

    assert_redirected_to servico_pacote_path(assigns(:servico_pacote))
  end

  test "should show servico_pacote" do
    get :show, id: @servico_pacote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servico_pacote
    assert_response :success
  end

  test "should update servico_pacote" do
    patch :update, id: @servico_pacote, servico_pacote: { cnpjHotel: @servico_pacote.cnpjHotel, cnpjTrans: @servico_pacote.cnpjTrans, dataInicio: @servico_pacote.dataInicio, dataRetorno: @servico_pacote.dataRetorno, descHotel: @servico_pacote.descHotel, descPacote: @servico_pacote.descPacote, descQuarto: @servico_pacote.descQuarto, destino: @servico_pacote.destino, localSaida: @servico_pacote.localSaida, nomeHotel: @servico_pacote.nomeHotel, nomeTrans: @servico_pacote.nomeTrans, precoHotel: @servico_pacote.precoHotel, precoPacote: @servico_pacote.precoPacote, precoTrans: @servico_pacote.precoTrans, status: @servico_pacote.status, veiculo: @servico_pacote.veiculo }
    assert_redirected_to servico_pacote_path(assigns(:servico_pacote))
  end

  test "should destroy servico_pacote" do
    assert_difference('Servico::Pacote.count', -1) do
      delete :destroy, id: @servico_pacote
    end

    assert_redirected_to servico_pacotes_path
  end
end
