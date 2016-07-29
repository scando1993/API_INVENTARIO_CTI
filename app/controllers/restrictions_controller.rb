class RestrictionsController < ApplicationController
  before_action :set_restriction, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /restrictions
  def index
    @restrictions = Restriction.all

    render json: @restrictions
  end

  # GET /restrictions/1
  def show
    render json: @restriction
  end

  # POST /restrictions
  def create
    @restriction = Restriction.new(restriction_params)

    if @restriction.save
      render json: @restriction, status: :created, location: @restriction
    else
      render json: @restriction.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restrictions/1
  def update
    if @restriction.update(restriction_params)
      render json: @restriction
    else
      render json: @restriction.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restrictions/1
  def destroy
    @restriction.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restriction
      @restriction = Restriction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def restriction_params
      params.require(:restriction).permit(:canRead, :canIngress, :canModify, :canEliminate, :canPrint)
    end
end
