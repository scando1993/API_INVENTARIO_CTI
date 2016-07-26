class ProveedorsController < ApplicationController
  before_action :set_proveedor, only: [:show, :update, :destroy]

  # GET /proveedors
  def index
    @proveedors = Proveedor.all

    render json: @proveedors
  end

  # GET /proveedors/1
  def show
    render json: @proveedor
  end

  # POST /proveedors
  def create
    @proveedor = Proveedor.new(proveedor_params)

    if @proveedor.save
      render json: @proveedor, status: :created, location: @proveedor
    else
      render json: @proveedor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /proveedors/1
  def update
    if @proveedor.update(proveedor_params)
      render json: @proveedor
    else
      render json: @proveedor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /proveedors/1
  def destroy
    @proveedor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def proveedor_params
      params.require(:proveedor).permit(:activo)
    end
end
