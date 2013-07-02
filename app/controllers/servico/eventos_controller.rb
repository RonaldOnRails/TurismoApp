class Servico::EventosController < ApplicationController
  before_action :set_servico_evento, only: [:show, :edit, :update, :destroy]

  # GET /servico/eventos
  # GET /servico/eventos.json
  def index
    @servico_eventos = Servico::Evento.all
  end

  # GET /servico/eventos/1
  # GET /servico/eventos/1.json
  def show
  end

  # GET /servico/eventos/new
  def new
    @servico_evento = Servico::Evento.new
  end

  # GET /servico/eventos/1/edit
  def edit
  end

  # POST /servico/eventos
  # POST /servico/eventos.json
  def create
    @servico_evento = Servico::Evento.new(servico_evento_params)

    respond_to do |format|
      if @servico_evento.save
        format.html { redirect_to @servico_evento, notice: 'Evento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @servico_evento }
      else
        format.html { render action: 'new' }
        format.json { render json: @servico_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servico/eventos/1
  # PATCH/PUT /servico/eventos/1.json
  def update
    respond_to do |format|
      if @servico_evento.update(servico_evento_params)
        format.html { redirect_to @servico_evento, notice: 'Evento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @servico_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servico/eventos/1
  # DELETE /servico/eventos/1.json
  def destroy
    @servico_evento.destroy
    respond_to do |format|
      format.html { redirect_to servico_eventos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servico_evento
      @servico_evento = Servico::Evento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servico_evento_params
      params.require(:servico_evento).permit(:dataInicio, :dataRetorno, :destino, :localSaida, :nomeTrans, :veiculo, :cnpjTrans, :precoTrans, :descEvento, :nomeEvento, :precoConvite, :nroLugares, :precoTotal, :internacional, :status)
    end
end
