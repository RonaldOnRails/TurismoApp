class Servico::PacotesController < ApplicationController
  before_action :set_servico_pacote, only: [:show, :edit, :update, :destroy]

  # GET /servico/pacotes
  # GET /servico/pacotes.json
  def index
    @servico_pacotes = Servico::Pacote.all
  end

  # GET /servico/pacotes/1
  # GET /servico/pacotes/1.json
  def show
  end

  # GET /servico/pacotes/new
  def new
    @servico_pacote = Servico::Pacote.new
  end

  # GET /servico/pacotes/1/edit
  def edit
  end

  # POST /servico/pacotes
  # POST /servico/pacotes.json
  def create
    @servico_pacote = Servico::Pacote.new(servico_pacote_params)

    respond_to do |format|
      if @servico_pacote.save
        format.html { redirect_to @servico_pacote, notice: 'Pacote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @servico_pacote }
      else
        format.html { render action: 'new' }
        format.json { render json: @servico_pacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servico/pacotes/1
  # PATCH/PUT /servico/pacotes/1.json
  def update
    respond_to do |format|
      if @servico_pacote.update(servico_pacote_params)
        format.html { redirect_to @servico_pacote, notice: 'Pacote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @servico_pacote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servico/pacotes/1
  # DELETE /servico/pacotes/1.json
  def destroy
    @servico_pacote.destroy
    respond_to do |format|
      format.html { redirect_to servico_pacotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servico_pacote
      @servico_pacote = Servico::Pacote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servico_pacote_params
      params.require(:servico_pacote).permit(:dataInicio, :dataRetorno, :destino, :localSaida, :nomeTrans, :veiculo, :cnpjTrans, :precoTrans, :nomeHotel, :cnpjHotel, :descHotel, :descQuarto, :precoHotel, :descPacote, :precoPacote, :status)
    end
end
