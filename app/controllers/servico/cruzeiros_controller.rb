class Servico::CruzeirosController < ApplicationController
  before_action :set_servico_cruzeiro, only: [:show, :edit, :update, :destroy]

  # GET /servico/cruzeiros
  # GET /servico/cruzeiros.json
  def index
    @servico_cruzeiros = Servico::Cruzeiro.all
  end

  # GET /servico/cruzeiros/1
  # GET /servico/cruzeiros/1.json
  def show
  end

  # GET /servico/cruzeiros/new
  def new
    @servico_cruzeiro = Servico::Cruzeiro.new
  end

  # GET /servico/cruzeiros/1/edit
  def edit
  end

  # POST /servico/cruzeiros
  # POST /servico/cruzeiros.json
  def create
    @servico_cruzeiro = Servico::Cruzeiro.new(servico_cruzeiro_params)

    respond_to do |format|
      if @servico_cruzeiro.save
        format.html { redirect_to @servico_cruzeiro, notice: 'Cruzeiro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @servico_cruzeiro }
      else
        format.html { render action: 'new' }
        format.json { render json: @servico_cruzeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servico/cruzeiros/1
  # PATCH/PUT /servico/cruzeiros/1.json
  def update
    respond_to do |format|
      if @servico_cruzeiro.update(servico_cruzeiro_params)
        format.html { redirect_to @servico_cruzeiro, notice: 'Cruzeiro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @servico_cruzeiro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servico/cruzeiros/1
  # DELETE /servico/cruzeiros/1.json
  def destroy
    @servico_cruzeiro.destroy
    respond_to do |format|
      format.html { redirect_to servico_cruzeiros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servico_cruzeiro
      @servico_cruzeiro = Servico::Cruzeiro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servico_cruzeiro_params
      params.require(:servico_cruzeiro).permit(:dataInicio, :dataRetorno, :trajetoria, :localSaida, :nomeNavio, :empresaNavio, :empresaCnpj, :descQuarto, :precoQuarto, :descCruzeiro, :precoTotal, :nroQuartos, :internacional, :status)
    end
end
