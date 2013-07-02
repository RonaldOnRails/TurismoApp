class PessoaJuridicasController < ApplicationController
  before_action :set_pessoa_juridica, only: [:show, :edit, :update, :destroy]

  # GET /pessoa_juridicas
  # GET /pessoa_juridicas.json
  def index
    @pessoa_juridicas = PessoaJuridica.all
  end

  # GET /pessoa_juridicas/1
  # GET /pessoa_juridicas/1.json
  def show
  end

  # GET /pessoa_juridicas/new
  def new
    @user = PessoaJuridica.new
    @user.endereco = Endereco.new
  end

  # GET /pessoa_juridicas/1/edit
  def edit
  end

  # POST /pessoa_juridicas
  # POST /pessoa_juridicas.json
  def create
    @user = PessoaJuridica.new(pessoa_juridica_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Pessoa juridica was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoa_juridicas/1
  # PATCH/PUT /pessoa_juridicas/1.json
  def update
    respond_to do |format|
      if @user.update(pessoa_juridica_params)
        format.html { redirect_to @user, notice: 'Pessoa juridica was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoa_juridicas/1
  # DELETE /pessoa_juridicas/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to pessoa_juridicas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa_juridica
      @user = PessoaJuridica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessoa_juridica_params
      params.require(:pessoa_juridica).permit(:nome, :cnpj, :email, :nomeResp, :cargo, :cpf, :telefone, :observacao, :recebe_email, :nroCompra, :status)
    end
end
