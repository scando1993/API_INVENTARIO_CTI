class IngressesController < ApplicationController
  before_action :set_ingress, only: [:show, :update, :destroy]

  # GET /ingresses
  def index
    @ingresses = Ingress.all

    render json: @ingresses
  end

  # GET /ingresses/1
  def show
    render json: @ingress
  end

  # POST /ingresses
  def create
    @ingress = Ingress.new(ingress_params)

    if @ingress.save
      render json: @ingress, status: :created, location: @ingress
    else
      render json: @ingress.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ingresses/1
  def update
    if @ingress.update(ingress_params)
      render json: @ingress
    else
      render json: @ingress.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ingresses/1
  def destroy
    @ingress.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingress
      @ingress = Ingress.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ingress_params
      params.require(:ingress).permit(:invoiceDate)
    end
end
