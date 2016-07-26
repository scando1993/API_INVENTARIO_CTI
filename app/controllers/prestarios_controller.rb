class PrestariosController < ApplicationController
  before_action :set_prestario, only: [:show, :update, :destroy]

  # GET /prestarios
  def index
    @prestarios = Prestario.all

    render json: @prestarios
  end

  # GET /prestarios/1
  def show
    render json: @prestario
  end

  # POST /prestarios
  def create
    @prestario = Prestario.new(prestario_params)

    if @prestario.save
      render json: @prestario, status: :created, location: @prestario
    else
      render json: @prestario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /prestarios/1
  def update
    if @prestario.update(prestario_params)
      render json: @prestario
    else
      render json: @prestario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /prestarios/1
  def destroy
    @prestario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestario
      @prestario = Prestario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prestario_params
      params.require(:prestario).permit(:funcion, :activo)
    end
end
