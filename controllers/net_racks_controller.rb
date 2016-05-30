class NetRacksController < ApplicationController
  before_action :set_net_rack, only: [:show, :edit, :update, :destroy]

  # GET /net_racks
  # GET /net_racks.json
  def index
    @net_racks = NetRack.all
  end

  # GET /net_racks/1
  # GET /net_racks/1.json
  def show
  end

  # GET /net_racks/new
  def new
    @net_rack = NetRack.new
  end

  # GET /net_racks/1/edit
  def edit
  end

  # POST /net_racks
  # POST /net_racks.json
  def create
    @net_rack = NetRack.new(net_rack_params)

    respond_to do |format|
      if @net_rack.save
        format.html { redirect_to @net_rack, notice: 'Net rack was successfully created.' }
        format.json { render :show, status: :created, location: @net_rack }
      else
        format.html { render :new }
        format.json { render json: @net_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /net_racks/1
  # PATCH/PUT /net_racks/1.json
  def update
    respond_to do |format|
      if @net_rack.update(net_rack_params)
        format.html { redirect_to @net_rack, notice: 'Net rack was successfully updated.' }
        format.json { render :show, status: :ok, location: @net_rack }
      else
        format.html { render :edit }
        format.json { render json: @net_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /net_racks/1
  # DELETE /net_racks/1.json
  def destroy
    @net_rack.destroy
    respond_to do |format|
      format.html { redirect_to net_racks_url, notice: 'Net rack was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_net_rack
      @net_rack = NetRack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def net_rack_params
      params.require(:net_rack).permit(:name, :locationid)
    end
end
