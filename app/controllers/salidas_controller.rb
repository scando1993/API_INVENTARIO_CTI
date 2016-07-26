class SalidasController < ApplicationController
  before_action :set_salida, only: [:show, :update, :destroy]

  # GET /salidas
  def index
    @salidas = Salida.all

    render json: @salidas
  end

  # GET /salidas/1
  def show
    render json: @salida
  end

  # POST /salidas
  def create
    @salida = Salida.new(salida_params)

    if @salida.save
      render json: @salida, status: :created, location: @salida
    else
      render json: @salida.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /salidas/1
  def update
    if @salida.update(salida_params)
      render json: @salida
    else
      render json: @salida.errors, status: :unprocessable_entity
    end
  end

  # DELETE /salidas/1
  def destroy
    @salida.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salida
      @salida = Salida.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def salida_params
      params.require(:salida).permit(:noActa)
    end
end
