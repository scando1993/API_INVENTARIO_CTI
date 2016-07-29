class PeopleController < ApplicationController
  before_action :set_person, only: [:show, :update, :destroy]
  # before_action :authenticate_user!

  respond_to :json, :xml

  # GET /people
  # GET /people.json
  def index
    @people = Person.all
    if(params[:users])
      @users = User.all
      respond_with @users
    end


  end

  # GET /people/1
  # GET /people/1.json
  def show
    @person = Person.find_by(params[:id])
    respond_with @person
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(person_params)

    if @person.save
      render :show, status: :created, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /people/1
  # PATCH/PUT /people/1.json
  def update
    if @person.update(person_params)
      render :show, status: :ok, location: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.permit(:firstname, :lastname, :email, :function, :phone, :gender, :cellphone, :institutional_email, :function)
    end
end
