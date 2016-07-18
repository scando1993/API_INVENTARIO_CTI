class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]
  # before_action :authenticate_user!

  respond_to :json,:xml,:bson, :plist
  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    # respond_with @items
    render @items ,'items/index', status: :ok, formats: :json
    # render 'items/index'
    # respond_with_handler
  end


  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])
    respond_with @item
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)

    if @item.save
      render :show, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    if @item.update(item_params)
      render :show, status: :ok, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.permit(:title, :code, :type, :state, :reference, :domain, :description)
    end
end
