class IpStatusesController < ApplicationController
  before_action :set_ip_status, only: [:show, :edit, :update, :destroy]

  # GET /ip_statuses
  # GET /ip_statuses.json
  def index
    @ip_statuses = IpStatus.all
  end

  # GET /ip_statuses/1
  # GET /ip_statuses/1.json
  def show
  end

  # GET /ip_statuses/new
  def new
    @ip_status = IpStatus.new
  end

  # GET /ip_statuses/1/edit
  def edit
  end

  # POST /ip_statuses
  # POST /ip_statuses.json
  def create
    @ip_status = IpStatus.new(ip_status_params)

    respond_to do |format|
      if @ip_status.save
        format.html { redirect_to @ip_status, notice: 'Ip status was successfully created.' }
        format.json { render :show, status: :created, location: @ip_status }
      else
        format.html { render :new }
        format.json { render json: @ip_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ip_statuses/1
  # PATCH/PUT /ip_statuses/1.json
  def update
    respond_to do |format|
      if @ip_status.update(ip_status_params)
        format.html { redirect_to @ip_status, notice: 'Ip status was successfully updated.' }
        format.json { render :show, status: :ok, location: @ip_status }
      else
        format.html { render :edit }
        format.json { render json: @ip_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ip_statuses/1
  # DELETE /ip_statuses/1.json
  def destroy
    @ip_status.destroy
    respond_to do |format|
      format.html { redirect_to ip_statuses_url, notice: 'Ip status was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip_status
      @ip_status = IpStatus.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ip_status_params
      params.require(:ip_status).permit(:status)
    end
end
