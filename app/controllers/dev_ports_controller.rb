class DevPortsController < ApplicationController
  before_action :set_dev_port, only: [:show, :edit, :update, :destroy]

  # GET /dev_ports
  # GET /dev_ports.json
  def index
    @dev_ports = DevPort.all
  end

  # GET /dev_ports/1
  # GET /dev_ports/1.json
  def show
  end

  # GET /dev_ports/new
  def new
    @dev_port = DevPort.new
  end

  # GET /dev_ports/1/edit
  def edit
  end

  # POST /dev_ports
  # POST /dev_ports.json
  def create
    @dev_port = DevPort.new(dev_port_params)

    respond_to do |format|
      if @dev_port.save
        format.html { redirect_to @dev_port, notice: 'Dev port was successfully created.' }
        format.json { render :show, status: :created, location: @dev_port }
      else
        format.html { render :new }
        format.json { render json: @dev_port.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dev_ports/1
  # PATCH/PUT /dev_ports/1.json
  def update
    respond_to do |format|
      if @dev_port.update(dev_port_params)
        format.html { redirect_to @dev_port, notice: 'Dev port was successfully updated.' }
        format.json { render :show, status: :ok, location: @dev_port }
      else
        format.html { render :edit }
        format.json { render json: @dev_port.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dev_ports/1
  # DELETE /dev_ports/1.json
  def destroy
    @dev_port.destroy
    respond_to do |format|
      format.html { redirect_to dev_ports_url, notice: 'Dev port was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dev_port
      @dev_port = DevPort.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dev_port_params
      params.require(:dev_port).permit(:name, :portno, :type, :RackID, :odfid, :fiberid)
    end
end
