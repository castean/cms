class SectorialsController < ApplicationController
  before_action :set_sectorial, only: [:show, :edit, :update, :destroy]

  # GET /sectorials
  # GET /sectorials.json
  def index
    @sectorials = Sectorial.all
  end

  # GET /sectorials/1
  # GET /sectorials/1.json
  def show
  end

  # GET /sectorials/new
  def new
    @sectorial = Sectorial.new
  end

  # GET /sectorials/1/edit
  def edit
  end

  # POST /sectorials
  # POST /sectorials.json
  def create
    @sectorial = Sectorial.new(sectorial_params)

    respond_to do |format|
      if @sectorial.save
        format.html { redirect_to @sectorial, notice: 'Sectorial was successfully created.' }
        format.json { render :show, status: :created, location: @sectorial }
      else
        format.html { render :new }
        format.json { render json: @sectorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sectorials/1
  # PATCH/PUT /sectorials/1.json
  def update
    respond_to do |format|
      if @sectorial.update(sectorial_params)
        format.html { redirect_to @sectorial, notice: 'Sectorial was successfully updated.' }
        format.json { render :show, status: :ok, location: @sectorial }
      else
        format.html { render :edit }
        format.json { render json: @sectorial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sectorials/1
  # DELETE /sectorials/1.json
  def destroy
    @sectorial.destroy
    respond_to do |format|
      format.html { redirect_to sectorials_url, notice: 'Sectorial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sectorial
      @sectorial = Sectorial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sectorial_params
      params.require(:sectorial).permit(:nombre, :ip_address, :limite)
    end
end
