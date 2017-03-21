class UsersController < ApplicationController
  
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json

  def index
    @users = User.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @user = User.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @user = User.new(users_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Usuario creado satisfactoriamente.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @user.update(users_params)
        format.html { redirect_to @user, notice: 'El usuario fue actualizado con excito.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'El usuario fue exitosamente borrado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end


end
