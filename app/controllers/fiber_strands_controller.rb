class FiberStrandsController < ApplicationController
  before_action :set_fiber_strand, only: [:show, :edit, :update, :destroy]

  # GET /fiber_strands
  # GET /fiber_strands.json
  def index
    @fiber_strands = FiberStrand.all
  end

  # GET /fiber_strands/1
  # GET /fiber_strands/1.json
  def show
  end

  # GET /fiber_strands/new
  def new
    @fiber_strand = FiberStrand.new
  end

  # GET /fiber_strands/1/edit
  def edit
  end

  # POST /fiber_strands
  # POST /fiber_strands.json
  def create
    @fiber_strand = FiberStrand.new(fiber_strand_params)

    respond_to do |format|
      if @fiber_strand.save
        format.html { redirect_to @fiber_strand, notice: 'Fiber strand was successfully created.' }
        format.json { render :show, status: :created, location: @fiber_strand }
      else
        format.html { render :new }
        format.json { render json: @fiber_strand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fiber_strands/1
  # PATCH/PUT /fiber_strands/1.json
  def update
    respond_to do |format|
      if @fiber_strand.update(fiber_strand_params)
        format.html { redirect_to @fiber_strand, notice: 'Fiber strand was successfully updated.' }
        format.json { render :show, status: :ok, location: @fiber_strand }
      else
        format.html { render :edit }
        format.json { render json: @fiber_strand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fiber_strands/1
  # DELETE /fiber_strands/1.json
  def destroy
    @fiber_strand.destroy
    respond_to do |format|
      format.html { redirect_to fiber_strands_url, notice: 'Fiber strand was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiber_strand
      @fiber_strand = FiberStrand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fiber_strand_params
      params.require(:fiber_strand).permit(:name, :port1id, :port2id, :cableid)
    end
end
