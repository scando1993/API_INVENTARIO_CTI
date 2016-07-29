class LendersController < ApplicationController
  before_action :set_lender, only: [:show, :update, :destroy]

  # GET /lenders
  def index
    @lenders = Lender.all

    render json: @lenders
  end

  # GET /lenders/1
  def show
    render json: @lender
  end

  # POST /lenders
  def create
    @lender = Lender.new(lender_params)

    if @lender.save
      render json: @lender, status: :created, location: @lender
    else
      render json: @lender.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lenders/1
  def update
    if @lender.update(lender_params)
      render json: @lender
    else
      render json: @lender.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lenders/1
  def destroy
    @lender.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lender
      @lender = Lender.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lender_params
      params.require(:lender).permit(:function, :active)
    end
end
