require 'test_helper'

class VendasControllerTest < ActionController::TestCase
  setup do
    @venda = vendas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venda" do
    assert_difference('Venda.count') do
      post :create, venda: { data_venda: @venda.data_venda, forma_pagamento: @venda.forma_pagamento, status: @venda.status, tipo_cliente: @venda.tipo_cliente, valor_total: @venda.valor_total }
    end

    assert_redirected_to venda_path(assigns(:venda))
  end

  test "should show venda" do
    get :show, id: @venda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venda
    assert_response :success
  end

  test "should update venda" do
    patch :update, id: @venda, venda: { data_venda: @venda.data_venda, forma_pagamento: @venda.forma_pagamento, status: @venda.status, tipo_cliente: @venda.tipo_cliente, valor_total: @venda.valor_total }
    assert_redirected_to venda_path(assigns(:venda))
  end

  test "should destroy venda" do
    assert_difference('Venda.count', -1) do
      delete :destroy, id: @venda
    end

    assert_redirected_to vendas_path
  end
end
