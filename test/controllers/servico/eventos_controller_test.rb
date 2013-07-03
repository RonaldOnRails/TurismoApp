require 'test_helper'

class Servico::EventosControllerTest < ActionController::TestCase
  setup do
    @servico_evento = servico_eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servico_eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servico_evento" do
    assert_difference('Servico::Evento.count') do
      post :create, servico_evento: { cnpjTrans: @servico_evento.cnpjTrans, dataInicio: @servico_evento.dataInicio, dataRetorno: @servico_evento.dataRetorno, descEvento: @servico_evento.descEvento, destino: @servico_evento.destino, internacional: @servico_evento.internacional, localSaida: @servico_evento.localSaida, nomeEvento: @servico_evento.nomeEvento, nomeTrans: @servico_evento.nomeTrans, nroLugares: @servico_evento.nroLugares, precoConvite: @servico_evento.precoConvite, precoTotal: @servico_evento.precoTotal, precoTrans: @servico_evento.precoTrans, status: @servico_evento.status, veiculo: @servico_evento.veiculo }
    end

    assert_redirected_to servico_evento_path(assigns(:servico_evento))
  end

  test "should show servico_evento" do
    get :show, id: @servico_evento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servico_evento
    assert_response :success
  end

  test "should update servico_evento" do
    patch :update, id: @servico_evento, servico_evento: { cnpjTrans: @servico_evento.cnpjTrans, dataInicio: @servico_evento.dataInicio, dataRetorno: @servico_evento.dataRetorno, descEvento: @servico_evento.descEvento, destino: @servico_evento.destino, internacional: @servico_evento.internacional, localSaida: @servico_evento.localSaida, nomeEvento: @servico_evento.nomeEvento, nomeTrans: @servico_evento.nomeTrans, nroLugares: @servico_evento.nroLugares, precoConvite: @servico_evento.precoConvite, precoTotal: @servico_evento.precoTotal, precoTrans: @servico_evento.precoTrans, status: @servico_evento.status, veiculo: @servico_evento.veiculo }
    assert_redirected_to servico_evento_path(assigns(:servico_evento))
  end

  test "should destroy servico_evento" do
    assert_difference('Servico::Evento.count', -1) do
      delete :destroy, id: @servico_evento
    end

    assert_redirected_to servico_eventos_path
  end
end
