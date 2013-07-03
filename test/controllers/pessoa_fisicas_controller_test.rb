require 'test_helper'

class PessoaFisicasControllerTest < ActionController::TestCase
  setup do
    @pessoa_fisica = pessoa_fisicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pessoa_fisicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pessoa_fisica" do
    assert_difference('PessoaFisica.count') do
      post :create, pessoa_fisica: { cpf: @pessoa_fisica.cpf, dataNasc: @pessoa_fisica.dataNasc, email: @pessoa_fisica.email, facebook: @pessoa_fisica.facebook, nome: @pessoa_fisica.nome, nroCompra: @pessoa_fisica.nroCompra, recebe_email: @pessoa_fisica.recebe_email, rg: @pessoa_fisica.rg, sexo: @pessoa_fisica.sexo, sobrenome: @pessoa_fisica.sobrenome, status: @pessoa_fisica.status, telefone: @pessoa_fisica.telefone }
    end

    assert_redirected_to pessoa_fisica_path(assigns(:pessoa_fisica))
  end

  test "should show pessoa_fisica" do
    get :show, id: @pessoa_fisica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pessoa_fisica
    assert_response :success
  end

  test "should update pessoa_fisica" do
    patch :update, id: @pessoa_fisica, pessoa_fisica: { cpf: @pessoa_fisica.cpf, dataNasc: @pessoa_fisica.dataNasc, email: @pessoa_fisica.email, facebook: @pessoa_fisica.facebook, nome: @pessoa_fisica.nome, nroCompra: @pessoa_fisica.nroCompra, recebe_email: @pessoa_fisica.recebe_email, rg: @pessoa_fisica.rg, sexo: @pessoa_fisica.sexo, sobrenome: @pessoa_fisica.sobrenome, status: @pessoa_fisica.status, telefone: @pessoa_fisica.telefone }
    assert_redirected_to pessoa_fisica_path(assigns(:pessoa_fisica))
  end

  test "should destroy pessoa_fisica" do
    assert_difference('PessoaFisica.count', -1) do
      delete :destroy, id: @pessoa_fisica
    end

    assert_redirected_to pessoa_fisicas_path
  end
end
