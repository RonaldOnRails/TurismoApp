class Servico::PasseiosController < ApplicationController
  before_action :set_servico_passeio, only: [:show, :edit, :update, :destroy]

  # GET /servico/passeios
  # GET /servico/passeios.json
  def index
    @servico_passeios = Servico::Passeio.all
  end

  # GET /servico/passeios/1
  # GET /servico/passeios/1.json
  def show
  end

  # GET /servico/passeios/new
  def new
    @servico_passeio = Servico::Passeio.new
  end

  # GET /servico/passeios/1/edit
  def edit
  end

  # POST /servico/passeios
  # POST /servico/passeios.json
  def create
    @servico_passeio = Servico::Passeio.new(servico_passeio_params)

    respond_to do |format|
      if @servico_passeio.save
        format.html { redirect_to @servico_passeio, notice: 'Passeio was successfully created.' }
        format.json { render action: 'show', status: :created, location: @servico_passeio }
      else
        format.html { render action: 'new' }
        format.json { render json: @servico_passeio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servico/passeios/1
  # PATCH/PUT /servico/passeios/1.json
  def update
    respond_to do |format|
      if @servico_passeio.update(servico_passeio_params)
        format.html { redirect_to @servico_passeio, notice: 'Passeio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @servico_passeio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servico/passeios/1
  # DELETE /servico/passeios/1.json
  def destroy
    @servico_passeio.destroy
    respond_to do |format|
      format.html { redirect_to servico_passeios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servico_passeio
      @servico_passeio = Servico::Passeio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servico_passeio_params
      params.require(:servico_passeio).permit(:dataInicio, :dataRetorno, :destino, :localSaida, :nomeTrans, :veiculo, :cnpjTrans, :precoTrans, :descPasseio, :precoTotal, :internacional, :status)
    end
end
