require 'test_helper'

class PessoaJuridicasControllerTest < ActionController::TestCase
  setup do
    @user = pessoa_juridicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoa_juridicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa_juridica" do
    assert_difference('PessoaJuridica.count') do
      post :create, pessoa_juridica: { cargo: @user.cargo, cnpj: @user.cnpj, cpf: @user.cpf, email: @user.email, nome: @user.nome, nomeResp: @user.nomeResp, nroCompra: @user.nroCompra, observacao: @user.observacao, recebe_email: @user.recebe_email, status: @user.status, telefone: @user.telefone }
    end

    assert_redirected_to pessoa_juridica_path(assigns(:pessoa_juridica))
  end

  test "should show pessoa_juridica" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update pessoa_juridica" do
    patch :update, id: @user, pessoa_juridica: { cargo: @user.cargo, cnpj: @user.cnpj, cpf: @user.cpf, email: @user.email, nome: @user.nome, nomeResp: @user.nomeResp, nroCompra: @user.nroCompra, observacao: @user.observacao, recebe_email: @user.recebe_email, status: @user.status, telefone: @user.telefone }
    assert_redirected_to pessoa_juridica_path(assigns(:pessoa_juridica))
  end

  test "should destroy pessoa_juridica" do
    assert_difference('PessoaJuridica.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to pessoa_juridicas_path
  end
end
